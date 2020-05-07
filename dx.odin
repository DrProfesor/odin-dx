package dx

//foreign import dx11 ".lib";

HRESULT :: distinct int;

HMODULE :: rawptr;
IDXGIAdapter :: rawptr;

foreign {
	// @(link_name="D3D11CreateDevice")
	// create_device :: proc(IDXGIAdapter pAdapter, 
	// 					  D3D_DRIVER_TYPE DriverType, 
	// 					  HMODULE Software, 
	// 					  uint Flags, 
	// 					  D3D_FEATURE_LEVEL pFeatureLevels, 
	// 					  uint FeatureLevels, 
	// 					  uint SDKVersion, 
	// 					  ID3D11Device *ppDevice, 
	// 					  D3D_FEATURE_LEVEL pFeatureLevel, 
	// 					  ID3D11DeviceContext *ppImmediateContext) -> HRESULT ---;

	@(link_name="D3D11CreateDeviceAndSwapChain")
	create_device_and_swapchain :: proc(
						    IDXGIAdapter pAdapter,
						    D3D_DRIVER_TYPE DriverType,
						    HMODULE Software,
						    uint Flags,
						    D3D_FEATURE_LEVEL pFeatureLevels,
						    uint FeatureLevels,
						    uint SDKVersion,
						    DXGI_SWAP_CHAIN_DESC* pSwapChainDesc,
						    IDXGISwapChain* ppSwapChain,
						    ID3D11Device* ppDevice,
						    D3D_FEATURE_LEVEL pFeatureLevel,
						    ID3D11DeviceContext* ppImmediateContext) -> HRESULT ---;
}

IDXGISwapChain :: struct {

}

ID3D11Device :: struct {

}

ID3D11DeviceContext :: struct {

}

DXGI_SWAP_CHAIN_DESC :: struct
{
	// DXGI_MODE_DESC BufferDesc;
	// DXGI_SAMPLE_DESC SampleDesc;
	// DXGI_USAGE BufferUsage;
	// UINT BufferCount;
	// HWND OutputWindow;
	// BOOL Windowed;
	// DXGI_SWAP_EFFECT SwapEffect;
	// UINT Flags;
}

D3D_DRIVER_TYPE :: enum
{
	D3D_DRIVER_TYPE_UNKNOWN	= 0,
	D3D_DRIVER_TYPE_HARDWARE	= ( D3D_DRIVER_TYPE_UNKNOWN + 1 ) ,
	D3D_DRIVER_TYPE_REFERENCE	= ( D3D_DRIVER_TYPE_HARDWARE + 1 ) ,
	D3D_DRIVER_TYPE_NULL	= ( D3D_DRIVER_TYPE_REFERENCE + 1 ) ,
	D3D_DRIVER_TYPE_SOFTWARE	= ( D3D_DRIVER_TYPE_NULL + 1 ) ,
	D3D_DRIVER_TYPE_WARP	= ( D3D_DRIVER_TYPE_SOFTWARE + 1 ) 
}

D3D_FEATURE_LEVEL :: enum
{
	D3D_FEATURE_LEVEL_9_1	= 0x9100,
	D3D_FEATURE_LEVEL_9_2	= 0x9200,
	D3D_FEATURE_LEVEL_9_3	= 0x9300,
	D3D_FEATURE_LEVEL_10_0	= 0xa000,
	D3D_FEATURE_LEVEL_10_1	= 0xa100,
	D3D_FEATURE_LEVEL_11_0	= 0xb000,
    D3D_FEATURE_LEVEL_11_1  = 0xb100,
    D3D_FEATURE_LEVEL_12_0  = 0xc000,
    D3D_FEATURE_LEVEL_12_1  = 0xc100
}