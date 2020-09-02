package dx

IDXGISwapChain3 :: struct {
    using vtbl: ^IDXGISwapChain3Vtbl
}
IDXGISwapChain3Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGISwapChain3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISwapChain3) -> ULONG,
    Release : proc(This: ^IDXGISwapChain3) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISwapChain3, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISwapChain3, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISwapChain3, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISwapChain3, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISwapChain3, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    Present : proc(This: ^IDXGISwapChain3, SyncInterval: UINT, Flags: UINT) -> HRESULT,
    GetBuffer : proc(This: ^IDXGISwapChain3, Buffer: UINT, riid: REFIID, ppSurface: ^rawptr) -> HRESULT,
    SetFullscreenState : proc(This: ^IDXGISwapChain3, Fullscreen: BOOL, pTarget: ^IDXGIOutput) -> HRESULT,
    GetFullscreenState : proc(This: ^IDXGISwapChain3, pFullscreen: ^BOOL, ppTarget: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGISwapChain3, pDesc: ^DXGI_SWAP_CHAIN_DESC) -> HRESULT,
    ResizeBuffers : proc(This: ^IDXGISwapChain3, BufferCount: UINT, Width: UINT, Height: UINT, NewFormat: DXGI_FORMAT, SwapChainFlags: UINT) -> HRESULT,
    ResizeTarget : proc(This: ^IDXGISwapChain3, pNewTargetParameters: ^DXGI_MODE_DESC) -> HRESULT,
    GetContainingOutput : proc(This: ^IDXGISwapChain3, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGISwapChain3, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetLastPresentCount : proc(This: ^IDXGISwapChain3, pLastPresentCount: ^UINT) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGISwapChain3, pDesc: ^DXGI_SWAP_CHAIN_DESC1) -> HRESULT,
    GetFullscreenDesc : proc(This: ^IDXGISwapChain3, pDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC) -> HRESULT,
    GetHwnd : proc(This: ^IDXGISwapChain3, pHwnd: ^HWND) -> HRESULT,
    GetCoreWindow : proc(This: ^IDXGISwapChain3, refiid: REFIID, ppUnk: ^rawptr) -> HRESULT,
    Present1 : proc(This: ^IDXGISwapChain3, SyncInterval: UINT, PresentFlags: UINT, pPresentParameters: ^DXGI_PRESENT_PARAMETERS) -> HRESULT,
    IsTemporaryMonoSupported : proc(This: ^IDXGISwapChain3) -> BOOL,
    GetRestrictToOutput : proc(This: ^IDXGISwapChain3, ppRestrictToOutput: ^^IDXGIOutput) -> HRESULT,
    SetBackgroundColor : proc(This: ^IDXGISwapChain3, pColor: ^DXGI_RGBA) -> HRESULT,
    GetBackgroundColor : proc(This: ^IDXGISwapChain3, pColor: ^DXGI_RGBA) -> HRESULT,
    SetRotation : proc(This: ^IDXGISwapChain3, Rotation: DXGI_MODE_ROTATION) -> HRESULT,
    GetRotation : proc(This: ^IDXGISwapChain3, pRotation: ^DXGI_MODE_ROTATION) -> HRESULT,
    SetSourceSize : proc(This: ^IDXGISwapChain3, Width: UINT, Height: UINT) -> HRESULT,
    GetSourceSize : proc(This: ^IDXGISwapChain3, pWidth: ^UINT, pHeight: ^UINT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGISwapChain3, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGISwapChain3, pMaxLatency: ^UINT) -> HRESULT,
    GetFrameLatencyWaitableObject : proc(This: ^IDXGISwapChain3) -> HANDLE,
    SetMatrixTransform : proc(This: ^IDXGISwapChain3, pMatrix: ^DXGI_MATRIX_3X2_F) -> HRESULT,
    GetMatrixTransform : proc(This: ^IDXGISwapChain3, pMatrix: ^DXGI_MATRIX_3X2_F) -> HRESULT,
    GetCurrentBackBufferIndex : proc(This: ^IDXGISwapChain3) -> UINT,
    CheckColorSpaceSupport : proc(This: ^IDXGISwapChain3, ColorSpace: DXGI_COLOR_SPACE_TYPE, pColorSpaceSupport: ^UINT) -> HRESULT,
    SetColorSpace1 : proc(This: ^IDXGISwapChain3, ColorSpace: DXGI_COLOR_SPACE_TYPE) -> HRESULT,
    ResizeBuffers1 : proc(This: ^IDXGISwapChain3, BufferCount: UINT, Width: UINT, Height: UINT, Format: DXGI_FORMAT, SwapChainFlags: UINT, pCreationNodeMask: ^UINT, ppPresentQueue: ^^IUnknown) -> HRESULT,
}
IDXGIOutput4 :: struct {
    using vtbl: ^IDXGIOutput4Vtbl
}
IDXGIOutput4Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput4, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput4) -> ULONG,
    Release : proc(This: ^IDXGIOutput4) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput4, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput4, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput4, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput4, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput4, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput4, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput4, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput4) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput4, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput4),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput4, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput4, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput4, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput4, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput4, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput4, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetDisplayModeList1 : proc(This: ^IDXGIOutput4, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC1) -> HRESULT,
    FindClosestMatchingMode1 : proc(This: ^IDXGIOutput4, pModeToMatch: ^DXGI_MODE_DESC1, pClosestMatch: ^DXGI_MODE_DESC1, pConcernedDevice: ^IUnknown) -> HRESULT,
    GetDisplaySurfaceData1 : proc(This: ^IDXGIOutput4, pDestination: ^IDXGIResource) -> HRESULT,
    DuplicateOutput : proc(This: ^IDXGIOutput4, pDevice: ^IUnknown, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
    SupportsOverlays : proc(This: ^IDXGIOutput4) -> BOOL,
    CheckOverlaySupport : proc(This: ^IDXGIOutput4, EnumFormat: DXGI_FORMAT, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
    CheckOverlayColorSpaceSupport : proc(This: ^IDXGIOutput4, Format: DXGI_FORMAT, ColorSpace: DXGI_COLOR_SPACE_TYPE, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
}
IDXGIFactory4 :: struct {
    using vtbl: ^IDXGIFactory4Vtbl
}
IDXGIFactory4Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactory4, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactory4) -> ULONG,
    Release : proc(This: ^IDXGIFactory4) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIFactory4, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIFactory4, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIFactory4, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIFactory4, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumAdapters : proc(This: ^IDXGIFactory4, Adapter: UINT, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    MakeWindowAssociation : proc(This: ^IDXGIFactory4, WindowHandle: HWND, Flags: UINT) -> HRESULT,
    GetWindowAssociation : proc(This: ^IDXGIFactory4, pWindowHandle: ^HWND) -> HRESULT,
    CreateSwapChain : proc(This: ^IDXGIFactory4, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC, ppSwapChain: ^^IDXGISwapChain) -> HRESULT,
    CreateSoftwareAdapter : proc(This: ^IDXGIFactory4, Module: HMODULE, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    EnumAdapters1 : proc(This: ^IDXGIFactory4, Adapter: UINT, ppAdapter: ^^IDXGIAdapter1) -> HRESULT,
    IsCurrent : proc(This: ^IDXGIFactory4) -> BOOL,
    IsWindowedStereoEnabled : proc(This: ^IDXGIFactory4) -> BOOL,
    CreateSwapChainForHwnd : proc(This: ^IDXGIFactory4, pDevice: ^IUnknown, hWnd: HWND, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    CreateSwapChainForCoreWindow : proc(This: ^IDXGIFactory4, pDevice: ^IUnknown, pWindow: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetSharedResourceAdapterLuid : proc(This: ^IDXGIFactory4, hResource: HANDLE, pLuid: ^LUID) -> HRESULT,
    RegisterStereoStatusWindow : proc(This: ^IDXGIFactory4, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterStereoStatusEvent : proc(This: ^IDXGIFactory4, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterStereoStatus : proc(This: ^IDXGIFactory4, dwCookie: DWORD),
    RegisterOcclusionStatusWindow : proc(This: ^IDXGIFactory4, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterOcclusionStatusEvent : proc(This: ^IDXGIFactory4, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterOcclusionStatus : proc(This: ^IDXGIFactory4, dwCookie: DWORD),
    CreateSwapChainForComposition : proc(This: ^IDXGIFactory4, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetCreationFlags : proc(This: ^IDXGIFactory4) -> UINT,
    EnumAdapterByLuid : proc(This: ^IDXGIFactory4, AdapterLuid: LUID, riid: REFIID, ppvAdapter: ^rawptr) -> HRESULT,
    EnumWarpAdapter : proc(This: ^IDXGIFactory4, riid: REFIID, ppvAdapter: ^rawptr) -> HRESULT,
}
DXGI_QUERY_VIDEO_MEMORY_INFO :: struct {
    Budget: UINT64,
    CurrentUsage: UINT64,
    AvailableForReservation: UINT64,
    CurrentReservation: UINT64,
}
IDXGIAdapter3 :: struct {
    using vtbl: ^IDXGIAdapter3Vtbl
}
IDXGIAdapter3Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIAdapter3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIAdapter3) -> ULONG,
    Release : proc(This: ^IDXGIAdapter3) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIAdapter3, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIAdapter3, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIAdapter3, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIAdapter3, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumOutputs : proc(This: ^IDXGIAdapter3, Output: UINT, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGIAdapter3, pDesc: ^DXGI_ADAPTER_DESC) -> HRESULT,
    CheckInterfaceSupport : proc(This: ^IDXGIAdapter3, InterfaceName: REFGUID, pUMDVersion: ^LARGE_INTEGER) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGIAdapter3, pDesc: ^DXGI_ADAPTER_DESC1) -> HRESULT,
    GetDesc2 : proc(This: ^IDXGIAdapter3, pDesc: ^DXGI_ADAPTER_DESC2) -> HRESULT,
    RegisterHardwareContentProtectionTeardownStatusEvent : proc(This: ^IDXGIAdapter3, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterHardwareContentProtectionTeardownStatus : proc(This: ^IDXGIAdapter3, dwCookie: DWORD),
    QueryVideoMemoryInfo : proc(This: ^IDXGIAdapter3, NodeIndex: UINT, MemorySegmentGroup: UINT, pVideoMemoryInfo: ^DXGI_QUERY_VIDEO_MEMORY_INFO) -> HRESULT,
    SetVideoMemoryReservation : proc(This: ^IDXGIAdapter3, NodeIndex: UINT, MemorySegmentGroup: UINT, Reservation: UINT64) -> HRESULT,
    RegisterVideoMemoryBudgetChangeNotificationEvent : proc(This: ^IDXGIAdapter3, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterVideoMemoryBudgetChangeNotification : proc(This: ^IDXGIAdapter3, dwCookie: DWORD),
}
//DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG
DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_PRESENT : u32 :  0x1;
DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_OVERLAY_PRESENT : u32 :  0x2
    ;
//DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG
DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG_PRESENT : u32 :  0x1
    ;
//DXGI_MEMORY_SEGMENT_GROUP
DXGI_MEMORY_SEGMENT_GROUP_LOCAL : u32 :  0;
DXGI_MEMORY_SEGMENT_GROUP_NON_LOCAL : u32 :  1
    ;
