package dx

import "core:fmt"
import "core:sys/win32"

foreign import "system:d3d11.lib"
foreign d3d11 {
	@(link_name="D3D11CreateDevice")
	create_device :: proc(
						  pAdapter: IDXGIAdapter, 
						  DriverType: D3D_DRIVER_TYPE, 
						  Software: HMODULE, 
						  Flags: D3D11_CREATE_DEVICE_FLAG, 
						  pFeatureLevels: ^[]D3D_FEATURE_LEVEL, 
						  FeatureLevels: uint, 
						  SDKVersion: uint, 
						  ppDevice: ID3D11Device, 
						  pFeatureLevel: ^D3D_FEATURE_LEVEL, 
						  ppImmediateContext: ID3D11DeviceContext) -> HRESULT ---;

	@(link_name="D3D11CreateDeviceAndSwapChain")
	create_device_and_swapchain :: proc "std" (
						  pAdapter           : ^IDXGIAdapter, 
						  DriverType         : D3D_DRIVER_TYPE, 
						  Software           : HMODULE, 
						  Flags              : D3D11_CREATE_DEVICE_FLAG, 
						  pFeatureLevels     : ^[]D3D_FEATURE_LEVEL, 
						  FeatureLevels      : u32, 
						  SDKVersion         : u32, 
						  pSwapChainDesc     : ^DXGI_SWAP_CHAIN_DESC,
						  ppSwapChain        : ^^IDXGISwapChain,
						  ppDevice           : ^^ID3D11Device, 
						  pFeatureLevel      : ^D3D_FEATURE_LEVEL, 
						  ppImmediateContext : ^^ID3D11DeviceContext) -> HRESULT ---;
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
	data1: i32,
	data2: i16,
	data3: i16,
	data4: [8]byte,
}

SIZE :: struct {
  cx: u32,
  cy: u32,
}

LPCSTR        :: cstring;
LPSTR         :: cstring;
LPCWSTR       :: cstring;
POINT         :: Point;
INT           :: i32;
UINT          :: u32;
UINT8         :: u8;
UINT16        :: u16;
UINT64        :: u64;
USHORT        :: u16;
LONG          :: i32;
ULONG         :: u32;
ULONGLONG     :: u64;
LARGE_INTEGER :: i64;
FLOAT         :: f32;
float         :: f32;
BYTE          :: byte;
char          :: u8;
BOOL          :: bool;
REFIID        :: GUID;
REFGUID       :: GUID;
SIZE_T        :: u32;
WCHAR         :: i32;
DWORD         :: i32;
_LUID         :: LUID;

HRESULT :: win32.Hresult;
HMODULE :: win32.Hmodule;
HMONITOR :: win32.Hmonitor;
HWND :: win32.Hwnd;
RECT :: win32.Rect;
HANDLE :: win32.Handle;
HDC :: win32.Handle;
LPVOID :: rawptr;
Point :: win32.Point;

D3D11_SRV_DIMENSION :: D3D_SRV_DIMENSION;
D3D11_PRIMITIVE_TOPOLOGY :: D3D_PRIMITIVE_TOPOLOGY;
D3D11_RECT :: RECT;

DXGI_RGBA :: D3DCOLORVALUE;
DXGI_DEBUG_ID :: GUID;

PFN_DESTRUCTION_CALLBACK :: proc(pData: rawptr);
DXGI_INFO_QUEUE_MESSAGE_ID :: i32;
D3D11_AUTHENTICATED_PROTECTION_FLAGS :: u32;

SECURITY_ATTRIBUTES :: struct {
  nLength: u32,
  lpSecurityDescriptor: rawptr,
  bInheritHandle: bool,
}

APP_DEPRECATED_HRESULT :: HRESULT;


DXGI_USAGE :: enum i32 {
	DXGI_USAGE_SHADER_INPUT         = 0x00000010,
	DXGI_USAGE_RENDER_TARGET_OUTPUT = 0x00000020,
	DXGI_USAGE_BACK_BUFFER          = 0x00000040,
	DXGI_USAGE_SHARED               = 0x00000080,
	DXGI_USAGE_READ_ONLY            = 0x00000100,
	DXGI_USAGE_DISCARD_ON_PRESENT   = 0x00000200,
	DXGI_USAGE_UNORDERED_ACCESS     = 0x00000400,
}

// // helpers
get_guid :: proc(tid: typeid) -> GUID {
	switch tid {
		case ID3D11Texture2D: return GUID { 0x51218251,0x1E33,0x4617, {0x9C,0xCB,0x4D,0x3A,0x43,0x67,0xE7,0xBB} };
		// case IDXGIFactory:    return GUID { 0x7b7166ec,0x21c7,0x44ae, {0xb2,0x1a,0xc9,0xae,0x32,0x1a,0xe3,0x69} };
	}

	panic(fmt.tprint("No GUID found for: ",tid));
	return {};
}


Create_Device_Response :: enum int {
	D3D11_ERROR_FILE_NOT_FOUND                               = 0x887C002,
	D3D11_ERROR_TOO_MANY_UNIQUE_STATE_OBJECTS                = 0x887C0001,
	D3D11_ERROR_TOO_MANY_UNIQUE_VIEW_OBJECTS                 = 0x887C0003,
	D3D11_ERROR_DEFERRED_CONTEXT_MAP_WITHOUT_INITIAL_DISCARD = 0x887C0004,
	D3DERR_INVALIDCALL                                       = 0x887A0001,
	D3DERR_WASSTILLDRAWING                                   = 0x887A000A,
	E_FAIL                                                   = 0x80004005,
	E_INVALIDARG                                             = 0x80070057,
	E_OUTOFMEMORY                                            = 0x8007000E,
	E_NOTIMPL                                                = 0x80004001,
	S_FALSE                                                  = 1,
	S_OK                                                     = 0,
}