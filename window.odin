package dx

import "core:fmt"
import "core:sort"
import "core:strings"
import "core:mem"
import "core:os"
import "core:runtime"
import "core:sys/win32"

foreign import "system:kernel32.lib"
foreign kernel32 {
    @(link_name="SetLastError") set_last_error :: proc(error: i32) ---;
}

foreign import "system:user32.lib"
foreign user32 {
    @(link_name="SetCapture")     set_capture     :: proc(h: win32.Hwnd) -> win32.Hwnd ---;
    @(link_name="ReleaseCapture") release_capture :: proc() -> win32.Bool ---;
}

Window_Platform_Data :: struct {
    window_handle:  win32.Hwnd,
    device_context: win32.Hdc,
    render_context: win32.Hglrc,
}

Window :: struct {
	platform_data: Window_Platform_Data
}

module: win32.Hmodule; // amazing
main_window: Window;
currently_updating_window: ^Window;

create_window :: proc(name: string, width, height: int) -> (Window, bool) {
    defer LOG_WINDOWS_ERROR();

    //
    instance := cast(win32.Hinstance)win32.get_module_handle_a(nil);
    if instance == nil {
        logln("Error getting instance handle: ", get_and_clear_last_win32_error());
        return {}, false;
    }

    //
    window_class: win32.Wnd_Class_Ex_A;
    window_class.size = size_of(win32.Wnd_Class_Ex_A);
    window_class.style = win32.CS_OWNDC | win32.CS_HREDRAW | win32.CS_VREDRAW;
    window_class.wnd_proc = wnd_proc;
    window_class.instance = instance;
    window_class.cursor = win32.load_cursor_a(nil, win32.IDC_ARROW);
    window_class.class_name = cstring("HenloWindowClass");
    class := win32.register_class_ex_a(&window_class);
    if class == 0 {
        logln("Error in register_class_ex_a(): ", get_and_clear_last_win32_error());
        return {}, false;
    }

    //
    window: Window;
    currently_updating_window = &window;

    rect := win32.Rect{0, 0, cast(i32)width, cast(i32)height};
    win32.adjust_window_rect(&rect, win32.WS_OVERLAPPEDWINDOW, false);
    win32.create_window_ex_a(0,
                             window_class.class_name,
                             strings.clone_to_cstring(name),
                             win32.WS_OVERLAPPEDWINDOW | win32.WS_VISIBLE,
                             200, // todo(josh): get the resolution of the monitor and put the window in the center
                             100, // todo(josh): get the resolution of the monitor and put the window in the center
                             rect.right - rect.left,
                             rect.bottom - rect.top,
                             nil,
                             nil,
                             window_class.instance,
                             nil);
    

    if window.platform_data.window_handle == nil {
   		logln(win32.get_last_error());
   		return {}, false;
    }

    return window, true;
}

g_context: runtime.Context;

wnd_proc :: proc "std" (window_handle: win32.Hwnd, message: u32, wparam: win32.Wparam, lparam: win32.Lparam) -> win32.Lresult {
    context = g_context;

    assert(currently_updating_window != nil);

    result: win32.Lresult;

    @static mouse_capture_sum: int;

    switch (message) {
        case win32.WM_CREATE: {
            defer LOG_WINDOWS_ERROR();
            assert(currently_updating_window.platform_data.window_handle == nil);
            currently_updating_window.platform_data.window_handle = window_handle;

            assert(currently_updating_window.platform_data.device_context == nil);
            dc := win32.get_dc(window_handle);
            currently_updating_window.platform_data.device_context = dc;

            // todo(josh): look into what this stuff means
            if !setup_pixel_format(dc) {
                win32.post_quit_message(0);
            }

            rc := win32.create_context(dc);
            currently_updating_window.platform_data.render_context = rc;

            win32.make_current(dc, rc);
            rect: win32.Rect;
            win32.get_client_rect(window_handle, &rect);

            assert(module == nil);
            module = win32.load_library_a("d3d12.dll");
            defer {
                win32.free_library(module);
                module = nil;
            }
        }
        case: {
            LOG_WINDOWS_ERROR();
            defer LOG_WINDOWS_ERROR();
            result = win32.def_window_proc_a(window_handle, message, wparam, lparam);
        }
    }

    LOG_WINDOWS_ERROR();

    return result;
}

setup_pixel_format :: proc(device_context: win32.Hdc) -> bool {
    defer LOG_WINDOWS_ERROR();
    pfd: win32.Pixel_Format_Descriptor;
    pfd.size = size_of(win32.Pixel_Format_Descriptor);
    pfd.version = 1;
    pfd.flags = win32.PFD_DRAW_TO_WINDOW | win32.PFD_SUPPORT_OPENGL | win32.PFD_DOUBLEBUFFER;
    pfd.layer_mask = win32.PFD_MAIN_PLANE;
    pfd.pixel_type = win32.PFD_TYPE_COLORINDEX;
    pfd.color_bits = 8;
    pfd.depth_bits = 16;
    pfd.accum_bits = 0;
    pfd.stencil_bits = 0;

    pixelformat := win32.choose_pixel_format(device_context, &pfd);

    if pixelformat == 0 {
        LOG_WINDOWS_ERROR();
        assert(false, "choose_pixel_format failed");
        return false;
    }

    if win32.set_pixel_format(device_context, pixelformat, &pfd) == false {
        LOG_WINDOWS_ERROR();
        assert(false, "set_pixel_format failed");
        return false;
    }

    return true;
}

get_and_clear_last_win32_error :: proc() -> i32 {
    err := win32.get_last_error();
    set_last_error(0);
    return err;
}

LOG_WINDOWS_ERROR :: proc(loc := #caller_location) -> bool {
    err := get_and_clear_last_win32_error();
    if err == 203 {
        // todo(josh): 203 is the error for ERROR_ENVVAR_NOT_FOUND which I have no idea why we are getting it once per second
        return false;
    }

    if err == 10035 {
        // not(jake): resource temporarily unavailable. non-fatal, and caused when trying to connect to a socket
        return false;
    }

    if err != 0 {
        logf("win32 error % at %:%", err, loc.file_path, loc.line);
        return true;
    }
    return false;
}

logln :: proc(args: ..any, location := #caller_location) {
    fmt.print(fmt.tprintf("<%s.%s():%d>", location.file_path, location.procedure, location.line));
    fmt.print(..args);
    fmt.print('\n');
}

logf :: proc(f: string, args: ..any, location := #caller_location) {
    fmt.print(fmt.tprintf("<%s.%s():%d>", location.file_path, location.procedure, location.line));

    // todo(josh): escaping?
    last_end: int;
    num_percents: int;
    for b, idx in f {
        if b == '%' && num_percents < len(args) {
            str := f[last_end:idx];
            fmt.print(str);
            fmt.print(args[num_percents]);
            num_percents += 1;
            last_end = idx+1;
        }
    }
    last := f[last_end:len(f)];
    fmt.print(last);
    fmt.print('\n');
}

