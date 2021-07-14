package dx

import "core:fmt"
import "core:strings"
import "core:sys/win32"

create_window :: proc(name: string, width, height: int) -> win32.Hwnd {

    instance := cast(win32.Hinstance)win32.get_module_handle_a(nil);
    assert(instance != nil);

    window_class: win32.Wnd_Class_Ex_A;
    window_class.size = size_of(win32.Wnd_Class_Ex_A);
    window_class.style = win32.CS_OWNDC | win32.CS_HREDRAW | win32.CS_VREDRAW;
    window_class.wnd_proc = wnd_proc;
    window_class.instance = instance;
    window_class.cursor = win32.load_cursor_a(nil, win32.IDC_ARROW);
    window_class.class_name = cstring("WindowClass");

    class := win32.register_class_ex_a(&window_class);
    assert (class != 0);

    rect := win32.Rect{ 0, 0, cast(i32)width, cast(i32)height };
    win32.adjust_window_rect(&rect, win32.WS_OVERLAPPEDWINDOW, false);

    window_handle := 
        win32.create_window_ex_a(
            0,
            window_class.class_name,
            strings.clone_to_cstring(name),
            win32.WS_OVERLAPPEDWINDOW | win32.WS_VISIBLE,
            200,
            100,
            rect.right - rect.left,
            rect.bottom - rect.top,
            nil,
            nil,
            window_class.instance,
            nil);

    assert(window_handle != nil);
    return window_handle;
}

wnd_proc :: proc "std" (
    window_handle: win32.Hwnd,
    message: u32,
    wparam: win32.Wparam,
    lparam: win32.Lparam) -> win32.Lresult {

    result: win32.Lresult;

    switch (message) {
        case win32.WM_DESTROY:
            win32.post_quit_message(0);

        case:
            result = win32.def_window_proc_a(window_handle, message, wparam, lparam);
    }

    return result;
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

