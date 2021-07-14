package dx

import "core:fmt"
import "core:sys/win32"

foreign import "system:d3d11.lib"
foreign d3d11 {
    D3D11CreateDevice :: proc "std" (
                          pAdapter           : ^IDXGIAdapter,
                          DriverType         : UINT,
                          Software           : HMODULE,
                          Flags              : UINT,
                          pFeatureLevels     : ^D3D_FEATURE_LEVEL,
                          FeatureLevels      : u32,
                          SDKVersion         : u32,
                          ppDevice           : ID3D11Device,
                          pFeatureLevel      : ^D3D_FEATURE_LEVEL,
                          ppImmediateContext : ID3D11DeviceContext) -> HRESULT ---;

    D3D11CreateDeviceAndSwapChain :: proc "std" (
                          pAdapter           : ^IDXGIAdapter,
                          DriverType         : UINT,
                          Software           : HMODULE,
                          Flags              : UINT,
                          pFeatureLevels     : ^D3D_FEATURE_LEVEL,
                          FeatureLevels      : u32,
                          SDKVersion         : u32,
                          pSwapChainDesc     : ^DXGI_SWAP_CHAIN_DESC,
                          ppSwapChain        : ^^IDXGISwapChain,
                          ppDevice           : ^^ID3D11Device,
                          pFeatureLevel      : ^D3D_FEATURE_LEVEL,
                          ppImmediateContext : ^^ID3D11DeviceContext) -> HRESULT ---;
}
foreign import "system:d3dcompiler.lib"
foreign d3dcompiler {
    D3DCompileFromFile :: proc "std" (
                 pFileName   : win32.Wstring,
                 pDefines    : rawptr,//^D3D_SHADER_MACRO,
                 pInclude    : ^ID3DInclude,
                 pEntrypoint : cstring,
                 pTarget     : cstring,
                 Flags1      : UINT,
                 Flags2      : UINT,
                 ppCode      : ^^ID3D10Blob,
                 ppErrorMsgs : ^^ID3D10Blob) -> HRESULT ---;

    D3DCompile :: proc "std" (
                pSrcData    : cstring,
                SrcDataSize : uint,
                pSourceName : cstring,
                pDefines    : rawptr,
                pInclude    : ^ID3DInclude,
                pEntrypoint : cstring,
                pTarget     : cstring,
                Flags1      : UINT,
                Flags2      : UINT,
                ppCode      : ^^ID3D10Blob,
                ppErrorMsgs : ^^ID3D10Blob) -> HRESULT ---;
}

D3D11_SDK_VERSION  :: 7;

LPCSTR             :: cstring;
LPSTR              :: cstring;
LPCWSTR            :: ^u16;
POINT              :: Point;
INT                :: i32;
UINT               :: u32;
UINT8              :: u8;
UINT16             :: u16;
UINT64             :: u64;
USHORT             :: u16;
LONG               :: i32;
ULONG              :: u32;
ULONGLONG          :: u64;
LARGE_INTEGER      :: i64;
FLOAT              :: f32;
float              :: f32;
BYTE               :: byte;
char               :: u8;
BOOL               :: b32;
REFIID             :: GUID;
REFGUID            :: GUID;
SIZE_T             :: u32;
WCHAR              :: i32;
DWORD              :: i32;
LUID               :: _LUID;
HRESULT            :: win32.Hresult;
HMODULE            :: win32.Hmodule;
HMONITOR           :: win32.Hmonitor;
HWND               :: win32.Hwnd;
RECT               :: win32.Rect;
D3D11_RECT         :: RECT;
HANDLE             :: win32.Handle;
HDC                :: win32.Handle;
LPVOID             :: rawptr;
Point              :: win32.Point;
D3D_FEATURE_LEVEL  :: UINT;
D3DCOLORVALUE      :: _D3DCOLORVALUE;
DXGI_RGBA          :: D3DCOLORVALUE;

DXGI_FORMAT                            :: UINT;
D3D11_PRIMITIVE_TOPOLOGY               :: UINT;
D3D11_DEVICE_CONTEXT_TYPE              :: UINT;
D3D11_BLEND                            :: UINT;
D3D11_BLEND_OP                         :: UINT;
D3D11_FILL_MODE                        :: UINT;
D3D11_VIDEO_DECODER_BUFFER_TYPE        :: UINT;
D3D11_CULL_MODE                        :: UINT;
D3D11_COUNTER_TYPE                     :: UINT;
D3D11_USAGE                            :: UINT;
D3D11_RESOURCE_DIMENSION               :: UINT;
D3D11_SRV_DIMENSION                    :: UINT;
D3D11_UAV_DIMENSION                    :: UINT;
D3D11_RTV_DIMENSION                    :: UINT;
D3D11_QUERY                            :: UINT;
D3D11_MAP                              :: UINT;
D3D11_FEATURE                          :: UINT;
D3D11_FENCE_FLAG                       :: UINT;
D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE  :: UINT;
DXGI_COLOR_SPACE_TYPE                  :: UINT;
D3D11_VIDEO_FRAME_FORMAT               :: UINT;
D3D11_VIDEO_PROCESSOR_OUTPUT_RATE      :: UINT;
D3D11_VIDEO_PROCESSOR_STEREO_FORMAT    :: UINT;
D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE :: UINT;
D3D11_VIDEO_PROCESSOR_FILTER           :: UINT;
D3D11_VIDEO_PROCESSOR_ROTATION         :: UINT;
D3D11_CRYPTO_SESSION_STATUS            :: UINT;
DXGI_HDR_METADATA_TYPE                 :: UINT;
D3D11_AUTHENTICATED_CHANNEL_TYPE       :: UINT;
DXGI_MODE_ROTATION                     :: UINT;
DXGI_SWAP_EFFECT                       :: UINT;
DXGI_MODE_SCANLINE_ORDER               :: UINT;
DXGI_MODE_SCALING                      :: UINT;
DXGI_RESIDENCY                         :: UINT;
DXGI_OFFER_RESOURCE_PRIORITY           :: UINT;
DXGI_GRAPHICS_PREEMPTION_GRANULARITY   :: UINT;
DXGI_COMPUTE_PREEMPTION_GRANULARITY    :: UINT;
DXGI_MEMORY_SEGMENT_GROUP              :: UINT;
DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS    :: UINT;
DXGI_DEBUG_ID                          :: UINT;
DXGI_RECLAIM_RESOURCE_RESULTS          :: UINT;

PFN_DESTRUCTION_CALLBACK             :: proc(pData: rawptr);
DXGI_INFO_QUEUE_MESSAGE_ID           :: i32;
D3D11_AUTHENTICATED_PROTECTION_FLAGS :: u32;
APP_DEPRECATED_HRESULT               :: HRESULT;

S_FALSE :: 1;
S_OK    :: 0;

D3D11_ERROR_FILE_NOT_FOUND                               :: 0x887C002;
D3D11_ERROR_TOO_MANY_UNIQUE_STATE_OBJECTS                :: 0x887C0001;
D3D11_ERROR_TOO_MANY_UNIQUE_VIEW_OBJECTS                 :: 0x887C0003;
D3D11_ERROR_DEFERRED_CONTEXT_MAP_WITHOUT_INITIAL_DISCARD :: 0x887C0004;
D3DERR_INVALIDCALL                                       :: 0x887A0001;
D3DERR_WASSTILLDRAWING                                   :: 0x887A000A;
E_FAIL                                                   :: 0x80004005;
E_INVALIDARG                                             :: 0x80070057;
E_OUTOFMEMORY                                            :: 0x8007000E;
E_NOTIMPL                                                :: 0x80004001;

DXGI_ERROR_ACCESS_DENIED                :: 0x887A002B;
DXGI_ERROR_ACCESS_LOST                  :: 0x887A0026;
DXGI_ERROR_ALREADY_EXISTS               :: 0x887A0036;
DXGI_ERROR_CANNOT_PROTECT_CONTENT       :: 0x887A002A;
DXGI_ERROR_DEVICE_HUNG                  :: 0x887A0006;
DXGI_ERROR_DEVICE_REMOVED               :: 0x887A0005;
DXGI_ERROR_DEVICE_RESET                 :: 0x887A0007;
DXGI_ERROR_DRIVER_INTERNAL_ERROR        :: 0x887A0020;
DXGI_ERROR_FRAME_STATISTICS_DISJOINT    :: 0x887A000B;
DXGI_ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE :: 0x887A000C;
DXGI_ERROR_INVALID_CALL                 :: 0x887A0001;
DXGI_ERROR_MORE_DATA                    :: 0x887A0003;
DXGI_ERROR_NAME_ALREADY_EXISTS          :: 0x887A002C;
DXGI_ERROR_NONEXCLUSIVE                 :: 0x887A0021;
DXGI_ERROR_NOT_CURRENTLY_AVAILABLE      :: 0x887A0022;
DXGI_ERROR_NOT_FOUND                    :: 0x887A0002;
DXGI_ERROR_REMOTE_CLIENT_DISCONNECTED   :: 0x887A0023;
DXGI_ERROR_REMOTE_OUTOFMEMORY           :: 0x887A0024;
DXGI_ERROR_RESTRICT_TO_OUTPUT_STALE     :: 0x887A0029;
DXGI_ERROR_SDK_COMPONENT_MISSING        :: 0x887A002D;
DXGI_ERROR_SESSION_DISCONNECTED         :: 0x887A0028;
DXGI_ERROR_UNSUPPORTED                  :: 0x887A0004;
DXGI_ERROR_WAIT_TIMEOUT                 :: 0x887A0027;
DXGI_ERROR_WAS_STILL_DRAWING            :: 0x887A000A;

ID3DInclude :: struct {
    close: proc"std"(data: rawptr) -> win32.Hresult,
    open:  proc"std"(include_type: D3DIncludeType, file_name: cstring, parent_data: rawptr, out_data: ^rawptr, out_bytes: ^u32) -> win32.Hresult,
}

D3DIncludeType :: enum i32 {
    Local,
    System,
    D3D10_Local,
    D3D10_System,
    Force_Dword,
}

D3DCOMPILE_DEBUG                              : u32 : 1 << 0;
D3DCOMPILE_SKIP_VALIDATION                    : u32 : 1 << 1;
D3DCOMPILE_SKIP_OPTIMIZATION                  : u32 : 1 << 2;
D3DCOMPILE_PACK_MATRIX_ROW_MAJOR              : u32 : 1 << 3;
D3DCOMPILE_PACK_MATRIX_COLUMN_MAJOR           : u32 : 1 << 4;
D3DCOMPILE_PARTIAL_PRECISION                  : u32 : 1 << 5;
D3DCOMPILE_FORCE_VS_SOFTWARE_NO_OPT           : u32 : 1 << 6;
D3DCOMPILE_FORCE_PS_SOFTWARE_NO_OPT           : u32 : 1 << 7;
D3DCOMPILE_NO_PRESHADER                       : u32 : 1 << 8;
D3DCOMPILE_AVOID_FLOW_CONTROL                 : u32 : 1 << 9;
D3DCOMPILE_PREFER_FLOW_CONTROL                : u32 : 1 << 10;
D3DCOMPILE_ENABLE_STRICTNESS                  : u32 : 1 << 11;
D3DCOMPILE_ENABLE_BACKWARDS_COMPATIBILITY     : u32 : 1 << 12;
D3DCOMPILE_IEEE_STRICTNESS                    : u32 : 1 << 13;
D3DCOMPILE_OPTIMIZATION_LEVEL0                : u32 : 1 << 14;
D3DCOMPILE_OPTIMIZATION_LEVEL1                : u32 : 0;
D3DCOMPILE_OPTIMIZATION_LEVEL2                : u32 : (1 << 14) | (1 << 15);
D3DCOMPILE_OPTIMIZATION_LEVEL3                : u32 : 1 << 15;
D3DCOMPILE_WARNINGS_ARE_ERRORS                : u32 : 1 << 18;
D3DCOMPILE_RESOURCES_MAY_ALIAS                : u32 : 1 << 19;
D3DCOMPILE_ENABLE_UNBOUNDED_DESCRIPTOR_TABLES : u32 : 1 << 20;
D3DCOMPILE_ALL_RESOURCES_BOUND                : u32 : 1 << 21;

SECURITY_ATTRIBUTES :: struct {
  nLength: u32,
  lpSecurityDescriptor: rawptr,
  bInheritHandle: bool,
}

DXGI_USAGE :: enum i32 {
    DXGI_USAGE_SHADER_INPUT         = 0x00000010,
    DXGI_USAGE_RENDER_TARGET_OUTPUT = 0x00000020,
    DXGI_USAGE_BACK_BUFFER          = 0x00000040,
    DXGI_USAGE_SHARED               = 0x00000080,
    DXGI_USAGE_READ_ONLY            = 0x00000100,
    DXGI_USAGE_DISCARD_ON_PRESENT   = 0x00000200,
    DXGI_USAGE_UNORDERED_ACCESS     = 0x00000400,
}

IUnknown             :: struct {
    using vtbl: ^IUnknown_vtbl(IUnknown),
}

IUnknown_vtbl :: struct(T: typeid) {
    query_interface: proc(^T, ^rawptr) -> HRESULT,
    add_ref:         proc(^T) -> u32,
    release:         proc(^T) -> u32,
}

GUID :: struct {
    data1: u32,
    data2: u16,
    data3: u16,
    data4: [8]u8,
}

SIZE :: struct {
  cx: u32,
  cy: u32,
}