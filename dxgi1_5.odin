package dx

IDXGIOutput5 :: struct {
    using vtbl: ^IDXGIOutput5Vtbl
}
IDXGIOutput5Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput5, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput5) -> ULONG,
    Release : proc(This: ^IDXGIOutput5) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput5, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput5, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput5, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput5, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput5, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput5, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput5, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput5) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput5, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput5),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput5, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput5, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput5, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput5, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput5, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput5, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetDisplayModeList1 : proc(This: ^IDXGIOutput5, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC1) -> HRESULT,
    FindClosestMatchingMode1 : proc(This: ^IDXGIOutput5, pModeToMatch: ^DXGI_MODE_DESC1, pClosestMatch: ^DXGI_MODE_DESC1, pConcernedDevice: ^IUnknown) -> HRESULT,
    GetDisplaySurfaceData1 : proc(This: ^IDXGIOutput5, pDestination: ^IDXGIResource) -> HRESULT,
    DuplicateOutput : proc(This: ^IDXGIOutput5, pDevice: ^IUnknown, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
    SupportsOverlays : proc(This: ^IDXGIOutput5) -> BOOL,
    CheckOverlaySupport : proc(This: ^IDXGIOutput5, EnumFormat: DXGI_FORMAT, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
    CheckOverlayColorSpaceSupport : proc(This: ^IDXGIOutput5, Format: DXGI_FORMAT, ColorSpace: DXGI_COLOR_SPACE_TYPE, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
    DuplicateOutput1 : proc(This: ^IDXGIOutput5, pDevice: ^IUnknown, Flags: UINT, SupportedFormatsCount: UINT, pSupportedFormats: ^DXGI_FORMAT, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
}
DXGI_HDR_METADATA_HDR10 :: struct {
    RedPrimary: [2]UINT16,
    GreenPrimary: [2]UINT16,
    BluePrimary: [2]UINT16,
    WhitePoint: [2]UINT16,
    MaxMasteringLuminance: UINT,
    MinMasteringLuminance: UINT,
    MaxContentLightLevel: UINT16,
    MaxFrameAverageLightLevel: UINT16,
}
IDXGISwapChain4 :: struct {
    using vtbl: ^IDXGISwapChain4Vtbl
}
IDXGISwapChain4Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGISwapChain4, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISwapChain4) -> ULONG,
    Release : proc(This: ^IDXGISwapChain4) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISwapChain4, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISwapChain4, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISwapChain4, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISwapChain4, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISwapChain4, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    Present : proc(This: ^IDXGISwapChain4, SyncInterval: UINT, Flags: UINT) -> HRESULT,
    GetBuffer : proc(This: ^IDXGISwapChain4, Buffer: UINT, riid: REFIID, ppSurface: ^rawptr) -> HRESULT,
    SetFullscreenState : proc(This: ^IDXGISwapChain4, Fullscreen: BOOL, pTarget: ^IDXGIOutput) -> HRESULT,
    GetFullscreenState : proc(This: ^IDXGISwapChain4, pFullscreen: ^BOOL, ppTarget: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGISwapChain4, pDesc: ^DXGI_SWAP_CHAIN_DESC) -> HRESULT,
    ResizeBuffers : proc(This: ^IDXGISwapChain4, BufferCount: UINT, Width: UINT, Height: UINT, NewFormat: DXGI_FORMAT, SwapChainFlags: UINT) -> HRESULT,
    ResizeTarget : proc(This: ^IDXGISwapChain4, pNewTargetParameters: ^DXGI_MODE_DESC) -> HRESULT,
    GetContainingOutput : proc(This: ^IDXGISwapChain4, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGISwapChain4, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetLastPresentCount : proc(This: ^IDXGISwapChain4, pLastPresentCount: ^UINT) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGISwapChain4, pDesc: ^DXGI_SWAP_CHAIN_DESC1) -> HRESULT,
    GetFullscreenDesc : proc(This: ^IDXGISwapChain4, pDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC) -> HRESULT,
    GetHwnd : proc(This: ^IDXGISwapChain4, pHwnd: ^HWND) -> HRESULT,
    GetCoreWindow : proc(This: ^IDXGISwapChain4, refiid: REFIID, ppUnk: ^rawptr) -> HRESULT,
    Present1 : proc(This: ^IDXGISwapChain4, SyncInterval: UINT, PresentFlags: UINT, pPresentParameters: ^DXGI_PRESENT_PARAMETERS) -> HRESULT,
    IsTemporaryMonoSupported : proc(This: ^IDXGISwapChain4) -> BOOL,
    GetRestrictToOutput : proc(This: ^IDXGISwapChain4, ppRestrictToOutput: ^^IDXGIOutput) -> HRESULT,
    SetBackgroundColor : proc(This: ^IDXGISwapChain4, pColor: ^DXGI_RGBA) -> HRESULT,
    GetBackgroundColor : proc(This: ^IDXGISwapChain4, pColor: ^DXGI_RGBA) -> HRESULT,
    SetRotation : proc(This: ^IDXGISwapChain4, Rotation: DXGI_MODE_ROTATION) -> HRESULT,
    GetRotation : proc(This: ^IDXGISwapChain4, pRotation: ^DXGI_MODE_ROTATION) -> HRESULT,
    SetSourceSize : proc(This: ^IDXGISwapChain4, Width: UINT, Height: UINT) -> HRESULT,
    GetSourceSize : proc(This: ^IDXGISwapChain4, pWidth: ^UINT, pHeight: ^UINT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGISwapChain4, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGISwapChain4, pMaxLatency: ^UINT) -> HRESULT,
    GetFrameLatencyWaitableObject : proc(This: ^IDXGISwapChain4) -> HANDLE,
    SetMatrixTransform : proc(This: ^IDXGISwapChain4, pMatrix: ^DXGI_MATRIX_3X2_F) -> HRESULT,
    GetMatrixTransform : proc(This: ^IDXGISwapChain4, pMatrix: ^DXGI_MATRIX_3X2_F) -> HRESULT,
    GetCurrentBackBufferIndex : proc(This: ^IDXGISwapChain4) -> UINT,
    CheckColorSpaceSupport : proc(This: ^IDXGISwapChain4, ColorSpace: DXGI_COLOR_SPACE_TYPE, pColorSpaceSupport: ^UINT) -> HRESULT,
    SetColorSpace1 : proc(This: ^IDXGISwapChain4, ColorSpace: DXGI_COLOR_SPACE_TYPE) -> HRESULT,
    ResizeBuffers1 : proc(This: ^IDXGISwapChain4, BufferCount: UINT, Width: UINT, Height: UINT, Format: DXGI_FORMAT, SwapChainFlags: UINT, pCreationNodeMask: ^UINT, ppPresentQueue: ^IUnknown) -> HRESULT,
    SetHDRMetaData : proc(This: ^IDXGISwapChain4, Type: DXGI_HDR_METADATA_TYPE, Size: UINT, pMetaData: rawptr) -> HRESULT,
}
IDXGIDevice4 :: struct {
    using vtbl: ^IDXGIDevice4Vtbl
}
IDXGIDevice4Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDevice4, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDevice4) -> ULONG,
    Release : proc(This: ^IDXGIDevice4) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIDevice4, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIDevice4, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIDevice4, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIDevice4, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetAdapter : proc(This: ^IDXGIDevice4, pAdapter: ^^IDXGIAdapter) -> HRESULT,
    CreateSurface : proc(This: ^IDXGIDevice4, pDesc: ^DXGI_SURFACE_DESC, NumSurfaces: UINT, Usage: DXGI_USAGE, pSharedResource: ^DXGI_SHARED_RESOURCE, ppSurface: ^^IDXGISurface) -> HRESULT,
    QueryResourceResidency : proc(This: ^IDXGIDevice4, ppResources: ^IUnknown, pResidencyStatus: ^DXGI_RESIDENCY, NumResources: UINT) -> HRESULT,
    SetGPUThreadPriority : proc(This: ^IDXGIDevice4, Priority: INT) -> HRESULT,
    GetGPUThreadPriority : proc(This: ^IDXGIDevice4, pPriority: ^INT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGIDevice4, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGIDevice4, pMaxLatency: ^UINT) -> HRESULT,
    OfferResources : proc(This: ^IDXGIDevice4, NumResources: UINT, ppResources: ^IDXGIResource, Priority: DXGI_OFFER_RESOURCE_PRIORITY) -> HRESULT,
    ReclaimResources : proc(This: ^IDXGIDevice4, NumResources: UINT, ppResources: ^IDXGIResource, pDiscarded: ^BOOL) -> HRESULT,
    EnqueueSetEvent : proc(This: ^IDXGIDevice4, hEvent: HANDLE) -> HRESULT,
    Trim : proc(This: ^IDXGIDevice4),
    OfferResources1 : proc(This: ^IDXGIDevice4, NumResources: UINT, ppResources: ^IDXGIResource, Priority: DXGI_OFFER_RESOURCE_PRIORITY, Flags: UINT) -> HRESULT,
    ReclaimResources1 : proc(This: ^IDXGIDevice4, NumResources: UINT, ppResources: ^IDXGIResource, pResults: ^DXGI_RECLAIM_RESOURCE_RESULTS) -> HRESULT,
}
IDXGIFactory5 :: struct {
    using vtbl: ^IDXGIFactory5Vtbl
}
IDXGIFactory5Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactory5, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactory5) -> ULONG,
    Release : proc(This: ^IDXGIFactory5) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIFactory5, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIFactory5, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIFactory5, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIFactory5, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumAdapters : proc(This: ^IDXGIFactory5, Adapter: UINT, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    MakeWindowAssociation : proc(This: ^IDXGIFactory5, WindowHandle: HWND, Flags: UINT) -> HRESULT,
    GetWindowAssociation : proc(This: ^IDXGIFactory5, pWindowHandle: ^HWND) -> HRESULT,
    CreateSwapChain : proc(This: ^IDXGIFactory5, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC, ppSwapChain: ^^IDXGISwapChain) -> HRESULT,
    CreateSoftwareAdapter : proc(This: ^IDXGIFactory5, Module: HMODULE, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    EnumAdapters1 : proc(This: ^IDXGIFactory5, Adapter: UINT, ppAdapter: ^^IDXGIAdapter1) -> HRESULT,
    IsCurrent : proc(This: ^IDXGIFactory5) -> BOOL,
    IsWindowedStereoEnabled : proc(This: ^IDXGIFactory5) -> BOOL,
    CreateSwapChainForHwnd : proc(This: ^IDXGIFactory5, pDevice: ^IUnknown, hWnd: HWND, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    CreateSwapChainForCoreWindow : proc(This: ^IDXGIFactory5, pDevice: ^IUnknown, pWindow: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetSharedResourceAdapterLuid : proc(This: ^IDXGIFactory5, hResource: HANDLE, pLuid: ^LUID) -> HRESULT,
    RegisterStereoStatusWindow : proc(This: ^IDXGIFactory5, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterStereoStatusEvent : proc(This: ^IDXGIFactory5, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterStereoStatus : proc(This: ^IDXGIFactory5, dwCookie: DWORD),
    RegisterOcclusionStatusWindow : proc(This: ^IDXGIFactory5, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterOcclusionStatusEvent : proc(This: ^IDXGIFactory5, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterOcclusionStatus : proc(This: ^IDXGIFactory5, dwCookie: DWORD),
    CreateSwapChainForComposition : proc(This: ^IDXGIFactory5, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetCreationFlags : proc(This: ^IDXGIFactory5) -> UINT,
    EnumAdapterByLuid : proc(This: ^IDXGIFactory5, AdapterLuid: LUID, riid: REFIID, ppvAdapter: ^rawptr) -> HRESULT,
    EnumWarpAdapter : proc(This: ^IDXGIFactory5, riid: REFIID, ppvAdapter: ^rawptr) -> HRESULT,
    CheckFeatureSupport : proc(This: ^IDXGIFactory5, Feature: DXGI_FEATURE, pFeatureSupportData: rawptr, FeatureSupportDataSize: UINT) -> HRESULT,
}
DXGI_OUTDUPL_FLAG :: enum u32{
    DXGI_OUTDUPL_COMPOSITED_UI_CAPTURE_ONLY =  1
    ,
}
DXGI_HDR_METADATA_TYPE :: enum u32{
    DXGI_HDR_METADATA_TYPE_NONE =  0,
    DXGI_HDR_METADATA_TYPE_HDR10 =  1
    ,
}
DXGI_OFFER_RESOURCE_FLAGS :: enum u32{
    DXGI_OFFER_RESOURCE_FLAG_ALLOW_DECOMMIT =  0x1
    ,
}
DXGI_RECLAIM_RESOURCE_RESULTS :: enum u32{
    DXGI_RECLAIM_RESOURCE_RESULT_OK =  0,
    DXGI_RECLAIM_RESOURCE_RESULT_DISCARDED =  1,
    DXGI_RECLAIM_RESOURCE_RESULT_NOT_COMMITTED =  2
    ,
}
DXGI_FEATURE :: enum u32{
    DXGI_FEATURE_PRESENT_ALLOW_TEARING =  0
    ,
}
