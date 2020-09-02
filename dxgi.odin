package dx

DXGI_FRAME_STATISTICS :: struct {
    PresentCount: UINT,
    PresentRefreshCount: UINT,
    SyncRefreshCount: UINT,
    SyncQPCTime: LARGE_INTEGER,
    SyncGPUTime: LARGE_INTEGER,
}
DXGI_MAPPED_RECT :: struct {
    Pitch: INT,
    pBits: ^BYTE,
}
_LUID :: struct {
    LowPart: DWORD,
    HighPart: LONG,
}
DXGI_ADAPTER_DESC :: struct {
    Description: [128]WCHAR,
    VendorId: UINT,
    DeviceId: UINT,
    SubSysId: UINT,
    Revision: UINT,
    DedicatedVideoMemory: SIZE_T,
    DedicatedSystemMemory: SIZE_T,
    SharedSystemMemory: SIZE_T,
    AdapterLuid: LUID,
}
DXGI_OUTPUT_DESC :: struct {
    DeviceName: [32]WCHAR,
    DesktopCoordinates: RECT,
    AttachedToDesktop: BOOL,
    Rotation: DXGI_MODE_ROTATION,
    Monitor: HMONITOR,
}
DXGI_SHARED_RESOURCE :: struct {
    Handle: HANDLE,
}
DXGI_SURFACE_DESC :: struct {
    Width: UINT,
    Height: UINT,
    Format: DXGI_FORMAT,
    SampleDesc: DXGI_SAMPLE_DESC,
}
DXGI_SWAP_CHAIN_DESC :: struct {
    BufferDesc: DXGI_MODE_DESC,
    SampleDesc: DXGI_SAMPLE_DESC,
    BufferUsage: DXGI_USAGE,
    BufferCount: UINT,
    OutputWindow: HWND,
    Windowed: BOOL,
    SwapEffect: UINT,
    Flags: UINT,
}
IDXGIObject :: struct {
    using vtbl: ^IDXGIObjectVtbl
}
IDXGIObjectVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIObject, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIObject) -> ULONG,
    Release : proc(This: ^IDXGIObject) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIObject, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIObject, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIObject, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIObject, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
}
IDXGIDeviceSubObject :: struct {
    using vtbl: ^IDXGIDeviceSubObjectVtbl
}
IDXGIDeviceSubObjectVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDeviceSubObject, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDeviceSubObject) -> ULONG,
    Release : proc(This: ^IDXGIDeviceSubObject) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIDeviceSubObject, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIDeviceSubObject, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIDeviceSubObject, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIDeviceSubObject, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGIDeviceSubObject, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
}
IDXGIResource :: struct {
    using vtbl: ^IDXGIResourceVtbl
}
IDXGIResourceVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIResource, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIResource) -> ULONG,
    Release : proc(This: ^IDXGIResource) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIResource, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIResource, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIResource, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIResource, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGIResource, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    GetSharedHandle : proc(This: ^IDXGIResource, pSharedHandle: ^HANDLE) -> HRESULT,
    GetUsage : proc(This: ^IDXGIResource, pUsage: ^DXGI_USAGE) -> HRESULT,
    SetEvictionPriority : proc(This: ^IDXGIResource, EvictionPriority: UINT) -> HRESULT,
    GetEvictionPriority : proc(This: ^IDXGIResource, pEvictionPriority: ^UINT) -> HRESULT,
}
IDXGIKeyedMutex :: struct {
    using vtbl: ^IDXGIKeyedMutexVtbl
}
IDXGIKeyedMutexVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIKeyedMutex, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIKeyedMutex) -> ULONG,
    Release : proc(This: ^IDXGIKeyedMutex) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIKeyedMutex, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIKeyedMutex, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIKeyedMutex, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIKeyedMutex, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGIKeyedMutex, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    AcquireSync : proc(This: ^IDXGIKeyedMutex, Key: UINT64, dwMilliseconds: DWORD) -> HRESULT,
    ReleaseSync : proc(This: ^IDXGIKeyedMutex, Key: UINT64) -> HRESULT,
}
IDXGISurface :: struct {
    using vtbl: ^IDXGISurfaceVtbl
}
IDXGISurfaceVtbl :: struct {
    QueryInterface : proc(This: ^IDXGISurface, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISurface) -> ULONG,
    Release : proc(This: ^IDXGISurface) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISurface, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISurface, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISurface, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISurface, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISurface, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGISurface, pDesc: ^DXGI_SURFACE_DESC) -> HRESULT,
    Map : proc(This: ^IDXGISurface, pLockedRect: ^DXGI_MAPPED_RECT, MapFlags: UINT) -> HRESULT,
    Unmap : proc(This: ^IDXGISurface) -> HRESULT,
}
IDXGISurface1 :: struct {
    using vtbl: ^IDXGISurface1Vtbl
}
IDXGISurface1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGISurface1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISurface1) -> ULONG,
    Release : proc(This: ^IDXGISurface1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISurface1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISurface1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISurface1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISurface1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISurface1, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGISurface1, pDesc: ^DXGI_SURFACE_DESC) -> HRESULT,
    Map : proc(This: ^IDXGISurface1, pLockedRect: ^DXGI_MAPPED_RECT, MapFlags: UINT) -> HRESULT,
    Unmap : proc(This: ^IDXGISurface1) -> HRESULT,
    GetDC : proc(This: ^IDXGISurface1, Discard: BOOL, phdc: ^HDC) -> HRESULT,
    ReleaseDC : proc(This: ^IDXGISurface1, pDirtyRect: ^RECT) -> HRESULT,
}
IDXGIAdapter :: struct {
    using vtbl: ^IDXGIAdapterVtbl
}
IDXGIAdapterVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIAdapter, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIAdapter) -> ULONG,
    Release : proc(This: ^IDXGIAdapter) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIAdapter, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIAdapter, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIAdapter, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIAdapter, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumOutputs : proc(This: ^IDXGIAdapter, Output: UINT, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGIAdapter, pDesc: ^DXGI_ADAPTER_DESC) -> HRESULT,
    CheckInterfaceSupport : proc(This: ^IDXGIAdapter, InterfaceName: REFGUID, pUMDVersion: ^LARGE_INTEGER) -> HRESULT,
}
IDXGIOutput :: struct {
    using vtbl: ^IDXGIOutputVtbl
}
IDXGIOutputVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput) -> ULONG,
    Release : proc(This: ^IDXGIOutput) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
}
IDXGISwapChain :: struct {
    using vtbl: ^IDXGISwapChainVtbl
}
IDXGISwapChainVtbl :: struct {
    QueryInterface : proc(This: ^IDXGISwapChain, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISwapChain) -> ULONG,
    Release : proc(This: ^IDXGISwapChain) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISwapChain, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISwapChain, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISwapChain, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISwapChain, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISwapChain, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    Present : proc(This: ^IDXGISwapChain, SyncInterval: UINT, Flags: UINT) -> HRESULT,
    GetBuffer : proc(This: ^IDXGISwapChain, Buffer: UINT, riid: REFIID, ppSurface: ^rawptr) -> HRESULT,
    SetFullscreenState : proc(This: ^IDXGISwapChain, Fullscreen: BOOL, pTarget: ^IDXGIOutput) -> HRESULT,
    GetFullscreenState : proc(This: ^IDXGISwapChain, pFullscreen: ^BOOL, ppTarget: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGISwapChain, pDesc: ^DXGI_SWAP_CHAIN_DESC) -> HRESULT,
    ResizeBuffers : proc(This: ^IDXGISwapChain, BufferCount: UINT, Width: UINT, Height: UINT, NewFormat: DXGI_FORMAT, SwapChainFlags: UINT) -> HRESULT,
    ResizeTarget : proc(This: ^IDXGISwapChain, pNewTargetParameters: ^DXGI_MODE_DESC) -> HRESULT,
    GetContainingOutput : proc(This: ^IDXGISwapChain, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGISwapChain, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetLastPresentCount : proc(This: ^IDXGISwapChain, pLastPresentCount: ^UINT) -> HRESULT,
}
IDXGIFactory :: struct {
    using vtbl: ^IDXGIFactoryVtbl
}
IDXGIFactoryVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactory, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactory) -> ULONG,
    Release : proc(This: ^IDXGIFactory) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIFactory, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIFactory, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIFactory, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIFactory, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumAdapters : proc(This: ^IDXGIFactory, Adapter: UINT, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    MakeWindowAssociation : proc(This: ^IDXGIFactory, WindowHandle: HWND, Flags: UINT) -> HRESULT,
    GetWindowAssociation : proc(This: ^IDXGIFactory, pWindowHandle: ^HWND) -> HRESULT,
    CreateSwapChain : proc(This: ^IDXGIFactory, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC, ppSwapChain: ^^IDXGISwapChain) -> HRESULT,
    CreateSoftwareAdapter : proc(This: ^IDXGIFactory, Module: HMODULE, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
}
IDXGIDevice :: struct {
    using vtbl: ^IDXGIDeviceVtbl
}
IDXGIDeviceVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDevice, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDevice) -> ULONG,
    Release : proc(This: ^IDXGIDevice) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIDevice, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIDevice, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIDevice, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIDevice, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetAdapter : proc(This: ^IDXGIDevice, pAdapter: ^^IDXGIAdapter) -> HRESULT,
    CreateSurface : proc(This: ^IDXGIDevice, pDesc: ^DXGI_SURFACE_DESC, NumSurfaces: UINT, Usage: DXGI_USAGE, pSharedResource: ^DXGI_SHARED_RESOURCE, ppSurface: ^^IDXGISurface) -> HRESULT,
    QueryResourceResidency : proc(This: ^IDXGIDevice, ppResources: ^^IUnknown, pResidencyStatus: ^UINT, NumResources: UINT) -> HRESULT,
    SetGPUThreadPriority : proc(This: ^IDXGIDevice, Priority: INT) -> HRESULT,
    GetGPUThreadPriority : proc(This: ^IDXGIDevice, pPriority: ^INT) -> HRESULT,
}
DXGI_ADAPTER_DESC1 :: struct {
    Description: [128]WCHAR,
    VendorId: UINT,
    DeviceId: UINT,
    SubSysId: UINT,
    Revision: UINT,
    DedicatedVideoMemory: SIZE_T,
    DedicatedSystemMemory: SIZE_T,
    SharedSystemMemory: SIZE_T,
    AdapterLuid: LUID,
    Flags: UINT,
}
DXGI_DISPLAY_COLOR_SPACE :: struct {
    PrimaryCoordinates: [8][2]FLOAT,
    WhitePoints: [16][2]FLOAT,
}
IDXGIFactory1 :: struct {
    using vtbl: ^IDXGIFactory1Vtbl
}
IDXGIFactory1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactory1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactory1) -> ULONG,
    Release : proc(This: ^IDXGIFactory1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIFactory1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIFactory1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIFactory1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIFactory1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumAdapters : proc(This: ^IDXGIFactory1, Adapter: UINT, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    MakeWindowAssociation : proc(This: ^IDXGIFactory1, WindowHandle: HWND, Flags: UINT) -> HRESULT,
    GetWindowAssociation : proc(This: ^IDXGIFactory1, pWindowHandle: ^HWND) -> HRESULT,
    CreateSwapChain : proc(This: ^IDXGIFactory1, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC, ppSwapChain: ^^IDXGISwapChain) -> HRESULT,
    CreateSoftwareAdapter : proc(This: ^IDXGIFactory1, Module: HMODULE, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    EnumAdapters1 : proc(This: ^IDXGIFactory1, Adapter: UINT, ppAdapter: ^^IDXGIAdapter1) -> HRESULT,
    IsCurrent : proc(This: ^IDXGIFactory1) -> BOOL,
}
IDXGIAdapter1 :: struct {
    using vtbl: ^IDXGIAdapter1Vtbl
}
IDXGIAdapter1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIAdapter1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIAdapter1) -> ULONG,
    Release : proc(This: ^IDXGIAdapter1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIAdapter1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIAdapter1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIAdapter1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIAdapter1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumOutputs : proc(This: ^IDXGIAdapter1, Output: UINT, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGIAdapter1, pDesc: ^DXGI_ADAPTER_DESC) -> HRESULT,
    CheckInterfaceSupport : proc(This: ^IDXGIAdapter1, InterfaceName: REFGUID, pUMDVersion: ^LARGE_INTEGER) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGIAdapter1, pDesc: ^DXGI_ADAPTER_DESC1) -> HRESULT,
}
IDXGIDevice1 :: struct {
    using vtbl: ^IDXGIDevice1Vtbl
}
IDXGIDevice1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDevice1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDevice1) -> ULONG,
    Release : proc(This: ^IDXGIDevice1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIDevice1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIDevice1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIDevice1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIDevice1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetAdapter : proc(This: ^IDXGIDevice1, pAdapter: ^^IDXGIAdapter) -> HRESULT,
    CreateSurface : proc(This: ^IDXGIDevice1, pDesc: ^DXGI_SURFACE_DESC, NumSurfaces: UINT, Usage: DXGI_USAGE, pSharedResource: ^DXGI_SHARED_RESOURCE, ppSurface: ^^IDXGISurface) -> HRESULT,
    QueryResourceResidency : proc(This: ^IDXGIDevice1, ppResources: ^^IUnknown, pResidencyStatus: ^UINT, NumResources: UINT) -> HRESULT,
    SetGPUThreadPriority : proc(This: ^IDXGIDevice1, Priority: INT) -> HRESULT,
    GetGPUThreadPriority : proc(This: ^IDXGIDevice1, pPriority: ^INT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGIDevice1, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGIDevice1, pMaxLatency: ^UINT) -> HRESULT,
}
//DXGI_RESIDENCY
DXGI_RESIDENCY_FULLY_RESIDENT : u32 :  1;
DXGI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY : u32 :  2;
DXGI_RESIDENCY_EVICTED_TO_DISK : u32 :  3
    ;
//DXGI_SWAP_EFFECT
DXGI_SWAP_EFFECT_DISCARD : u32 :  0;
DXGI_SWAP_EFFECT_SEQUENTIAL : u32 :  1;
DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL : u32 :  3;
DXGI_SWAP_EFFECT_FLIP_DISCARD : u32 :  4
    ;
//DXGI_SWAP_CHAIN_FLAG
DXGI_SWAP_CHAIN_FLAG_NONPREROTATED : u32 :  1;
DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH : u32 :  2;
DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE : u32 :  4;
DXGI_SWAP_CHAIN_FLAG_RESTRICTED_CONTENT : u32 :  8;
DXGI_SWAP_CHAIN_FLAG_RESTRICT_SHARED_RESOURCE_DRIVER : u32 :  16;
DXGI_SWAP_CHAIN_FLAG_DISPLAY_ONLY : u32 :  32;
DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT : u32 :  64;
DXGI_SWAP_CHAIN_FLAG_FOREGROUND_LAYER : u32 :  128;
DXGI_SWAP_CHAIN_FLAG_FULLSCREEN_VIDEO : u32 :  256;
DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO : u32 :  512;
DXGI_SWAP_CHAIN_FLAG_HW_PROTECTED : u32 :  1024;
DXGI_SWAP_CHAIN_FLAG_ALLOW_TEARING : u32 :  2048;
DXGI_SWAP_CHAIN_FLAG_RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS : u32 :  4096
    ;
//DXGI_ADAPTER_FLAG
DXGI_ADAPTER_FLAG_NONE : u32 :  0;
DXGI_ADAPTER_FLAG_REMOTE : u32 :  1;
DXGI_ADAPTER_FLAG_SOFTWARE : u32 :  2;
DXGI_ADAPTER_FLAG_FORCE_DWORD : u32 :  0xffffffff
    ;
