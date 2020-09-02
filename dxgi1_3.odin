package dx

IDXGIDevice3 :: struct {
    using vtbl: ^IDXGIDevice3Vtbl
}
IDXGIDevice3Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDevice3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDevice3) -> ULONG,
    Release : proc(This: ^IDXGIDevice3) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIDevice3, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIDevice3, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIDevice3, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIDevice3, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetAdapter : proc(This: ^IDXGIDevice3, pAdapter: ^^IDXGIAdapter) -> HRESULT,
    CreateSurface : proc(This: ^IDXGIDevice3, pDesc: ^DXGI_SURFACE_DESC, NumSurfaces: UINT, Usage: DXGI_USAGE, pSharedResource: ^DXGI_SHARED_RESOURCE, ppSurface: ^^IDXGISurface) -> HRESULT,
    QueryResourceResidency : proc(This: ^IDXGIDevice3, ppResources: ^^IUnknown, pResidencyStatus: ^DXGI_RESIDENCY, NumResources: UINT) -> HRESULT,
    SetGPUThreadPriority : proc(This: ^IDXGIDevice3, Priority: INT) -> HRESULT,
    GetGPUThreadPriority : proc(This: ^IDXGIDevice3, pPriority: ^INT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGIDevice3, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGIDevice3, pMaxLatency: ^UINT) -> HRESULT,
    OfferResources : proc(This: ^IDXGIDevice3, NumResources: UINT, ppResources: ^^IDXGIResource, Priority: DXGI_OFFER_RESOURCE_PRIORITY) -> HRESULT,
    ReclaimResources : proc(This: ^IDXGIDevice3, NumResources: UINT, ppResources: ^^IDXGIResource, pDiscarded: ^BOOL) -> HRESULT,
    EnqueueSetEvent : proc(This: ^IDXGIDevice3, hEvent: HANDLE) -> HRESULT,
    Trim : proc(This: ^IDXGIDevice3),
}
DXGI_MATRIX_3X2_F :: struct {
    _11: FLOAT,
    _12: FLOAT,
    _21: FLOAT,
    _22: FLOAT,
    _31: FLOAT,
    _32: FLOAT,
}
IDXGISwapChain2 :: struct {
    using vtbl: ^IDXGISwapChain2Vtbl
}
IDXGISwapChain2Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGISwapChain2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISwapChain2) -> ULONG,
    Release : proc(This: ^IDXGISwapChain2) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISwapChain2, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISwapChain2, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISwapChain2, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISwapChain2, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISwapChain2, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    Present : proc(This: ^IDXGISwapChain2, SyncInterval: UINT, Flags: UINT) -> HRESULT,
    GetBuffer : proc(This: ^IDXGISwapChain2, Buffer: UINT, riid: REFIID, ppSurface: ^rawptr) -> HRESULT,
    SetFullscreenState : proc(This: ^IDXGISwapChain2, Fullscreen: BOOL, pTarget: ^IDXGIOutput) -> HRESULT,
    GetFullscreenState : proc(This: ^IDXGISwapChain2, pFullscreen: ^BOOL, ppTarget: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGISwapChain2, pDesc: ^DXGI_SWAP_CHAIN_DESC) -> HRESULT,
    ResizeBuffers : proc(This: ^IDXGISwapChain2, BufferCount: UINT, Width: UINT, Height: UINT, NewFormat: DXGI_FORMAT, SwapChainFlags: UINT) -> HRESULT,
    ResizeTarget : proc(This: ^IDXGISwapChain2, pNewTargetParameters: ^DXGI_MODE_DESC) -> HRESULT,
    GetContainingOutput : proc(This: ^IDXGISwapChain2, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGISwapChain2, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetLastPresentCount : proc(This: ^IDXGISwapChain2, pLastPresentCount: ^UINT) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGISwapChain2, pDesc: ^DXGI_SWAP_CHAIN_DESC1) -> HRESULT,
    GetFullscreenDesc : proc(This: ^IDXGISwapChain2, pDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC) -> HRESULT,
    GetHwnd : proc(This: ^IDXGISwapChain2, pHwnd: ^HWND) -> HRESULT,
    GetCoreWindow : proc(This: ^IDXGISwapChain2, refiid: REFIID, ppUnk: ^rawptr) -> HRESULT,
    Present1 : proc(This: ^IDXGISwapChain2, SyncInterval: UINT, PresentFlags: UINT, pPresentParameters: ^DXGI_PRESENT_PARAMETERS) -> HRESULT,
    IsTemporaryMonoSupported : proc(This: ^IDXGISwapChain2) -> BOOL,
    GetRestrictToOutput : proc(This: ^IDXGISwapChain2, ppRestrictToOutput: ^^IDXGIOutput) -> HRESULT,
    SetBackgroundColor : proc(This: ^IDXGISwapChain2, pColor: ^DXGI_RGBA) -> HRESULT,
    GetBackgroundColor : proc(This: ^IDXGISwapChain2, pColor: ^DXGI_RGBA) -> HRESULT,
    SetRotation : proc(This: ^IDXGISwapChain2, Rotation: DXGI_MODE_ROTATION) -> HRESULT,
    GetRotation : proc(This: ^IDXGISwapChain2, pRotation: ^DXGI_MODE_ROTATION) -> HRESULT,
    SetSourceSize : proc(This: ^IDXGISwapChain2, Width: UINT, Height: UINT) -> HRESULT,
    GetSourceSize : proc(This: ^IDXGISwapChain2, pWidth: ^UINT, pHeight: ^UINT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGISwapChain2, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGISwapChain2, pMaxLatency: ^UINT) -> HRESULT,
    GetFrameLatencyWaitableObject : proc(This: ^IDXGISwapChain2) -> HANDLE,
    SetMatrixTransform : proc(This: ^IDXGISwapChain2, pMatrix: ^DXGI_MATRIX_3X2_F) -> HRESULT,
    GetMatrixTransform : proc(This: ^IDXGISwapChain2, pMatrix: ^DXGI_MATRIX_3X2_F) -> HRESULT,
}
IDXGIOutput2 :: struct {
    using vtbl: ^IDXGIOutput2Vtbl
}
IDXGIOutput2Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput2) -> ULONG,
    Release : proc(This: ^IDXGIOutput2) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput2, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput2, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput2, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput2, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput2, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput2, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput2, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput2) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput2, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput2),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput2, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput2, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput2, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput2, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput2, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput2, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetDisplayModeList1 : proc(This: ^IDXGIOutput2, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC1) -> HRESULT,
    FindClosestMatchingMode1 : proc(This: ^IDXGIOutput2, pModeToMatch: ^DXGI_MODE_DESC1, pClosestMatch: ^DXGI_MODE_DESC1, pConcernedDevice: ^IUnknown) -> HRESULT,
    GetDisplaySurfaceData1 : proc(This: ^IDXGIOutput2, pDestination: ^IDXGIResource) -> HRESULT,
    DuplicateOutput : proc(This: ^IDXGIOutput2, pDevice: ^IUnknown, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
    SupportsOverlays : proc(This: ^IDXGIOutput2) -> BOOL,
}
IDXGIFactory3 :: struct {
    using vtbl: ^IDXGIFactory3Vtbl
}
IDXGIFactory3Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactory3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactory3) -> ULONG,
    Release : proc(This: ^IDXGIFactory3) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIFactory3, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIFactory3, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIFactory3, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIFactory3, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumAdapters : proc(This: ^IDXGIFactory3, Adapter: UINT, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    MakeWindowAssociation : proc(This: ^IDXGIFactory3, WindowHandle: HWND, Flags: UINT) -> HRESULT,
    GetWindowAssociation : proc(This: ^IDXGIFactory3, pWindowHandle: ^HWND) -> HRESULT,
    CreateSwapChain : proc(This: ^IDXGIFactory3, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC, ppSwapChain: ^^IDXGISwapChain) -> HRESULT,
    CreateSoftwareAdapter : proc(This: ^IDXGIFactory3, Module: HMODULE, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    EnumAdapters1 : proc(This: ^IDXGIFactory3, Adapter: UINT, ppAdapter: ^^IDXGIAdapter1) -> HRESULT,
    IsCurrent : proc(This: ^IDXGIFactory3) -> BOOL,
    IsWindowedStereoEnabled : proc(This: ^IDXGIFactory3) -> BOOL,
    CreateSwapChainForHwnd : proc(This: ^IDXGIFactory3, pDevice: ^IUnknown, hWnd: HWND, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    CreateSwapChainForCoreWindow : proc(This: ^IDXGIFactory3, pDevice: ^IUnknown, pWindow: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetSharedResourceAdapterLuid : proc(This: ^IDXGIFactory3, hResource: HANDLE, pLuid: ^LUID) -> HRESULT,
    RegisterStereoStatusWindow : proc(This: ^IDXGIFactory3, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterStereoStatusEvent : proc(This: ^IDXGIFactory3, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterStereoStatus : proc(This: ^IDXGIFactory3, dwCookie: DWORD),
    RegisterOcclusionStatusWindow : proc(This: ^IDXGIFactory3, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterOcclusionStatusEvent : proc(This: ^IDXGIFactory3, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterOcclusionStatus : proc(This: ^IDXGIFactory3, dwCookie: DWORD),
    CreateSwapChainForComposition : proc(This: ^IDXGIFactory3, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetCreationFlags : proc(This: ^IDXGIFactory3) -> UINT,
}
DXGI_DECODE_SWAP_CHAIN_DESC :: struct {
    Flags: UINT,
}
IDXGIDecodeSwapChain :: struct {
    using vtbl: ^IDXGIDecodeSwapChainVtbl
}
IDXGIDecodeSwapChainVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDecodeSwapChain, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDecodeSwapChain) -> ULONG,
    Release : proc(This: ^IDXGIDecodeSwapChain) -> ULONG,
    PresentBuffer : proc(This: ^IDXGIDecodeSwapChain, BufferToPresent: UINT, SyncInterval: UINT, Flags: UINT) -> HRESULT,
    SetSourceRect : proc(This: ^IDXGIDecodeSwapChain, pRect: ^RECT) -> HRESULT,
    SetTargetRect : proc(This: ^IDXGIDecodeSwapChain, pRect: ^RECT) -> HRESULT,
    SetDestSize : proc(This: ^IDXGIDecodeSwapChain, Width: UINT, Height: UINT) -> HRESULT,
    GetSourceRect : proc(This: ^IDXGIDecodeSwapChain, pRect: ^RECT) -> HRESULT,
    GetTargetRect : proc(This: ^IDXGIDecodeSwapChain, pRect: ^RECT) -> HRESULT,
    GetDestSize : proc(This: ^IDXGIDecodeSwapChain, pWidth: ^UINT, pHeight: ^UINT) -> HRESULT,
    SetColorSpace : proc(This: ^IDXGIDecodeSwapChain, ColorSpace: UINT) -> HRESULT,
    GetColorSpace : proc(This: ^IDXGIDecodeSwapChain) -> DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS,
}
IDXGIFactoryMedia :: struct {
    using vtbl: ^IDXGIFactoryMediaVtbl
}
IDXGIFactoryMediaVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactoryMedia, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactoryMedia) -> ULONG,
    Release : proc(This: ^IDXGIFactoryMedia) -> ULONG,
    CreateSwapChainForCompositionSurfaceHandle : proc(This: ^IDXGIFactoryMedia, pDevice: ^IUnknown, hSurface: HANDLE, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    CreateDecodeSwapChainForCompositionSurfaceHandle : proc(This: ^IDXGIFactoryMedia, pDevice: ^IUnknown, hSurface: HANDLE, pDesc: ^DXGI_DECODE_SWAP_CHAIN_DESC, pYuvDecodeBuffers: ^IDXGIResource, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGIDecodeSwapChain) -> HRESULT,
}
DXGI_FRAME_STATISTICS_MEDIA :: struct {
    PresentCount: UINT,
    PresentRefreshCount: UINT,
    SyncRefreshCount: UINT,
    SyncQPCTime: LARGE_INTEGER,
    SyncGPUTime: LARGE_INTEGER,
    CompositionMode: UINT,
    ApprovedPresentDuration: UINT,
}
IDXGISwapChainMedia :: struct {
    using vtbl: ^IDXGISwapChainMediaVtbl
}
IDXGISwapChainMediaVtbl :: struct {
    QueryInterface : proc(This: ^IDXGISwapChainMedia, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISwapChainMedia) -> ULONG,
    Release : proc(This: ^IDXGISwapChainMedia) -> ULONG,
    GetFrameStatisticsMedia : proc(This: ^IDXGISwapChainMedia, pStats: ^DXGI_FRAME_STATISTICS_MEDIA) -> HRESULT,
    SetPresentDuration : proc(This: ^IDXGISwapChainMedia, Duration: UINT) -> HRESULT,
    CheckPresentDurationSupport : proc(This: ^IDXGISwapChainMedia, DesiredPresentDuration: UINT, pClosestSmallerPresentDuration: ^UINT, pClosestLargerPresentDuration: ^UINT) -> HRESULT,
}
IDXGIOutput3 :: struct {
    using vtbl: ^IDXGIOutput3Vtbl
}
IDXGIOutput3Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput3) -> ULONG,
    Release : proc(This: ^IDXGIOutput3) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput3, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput3, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput3, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput3, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput3, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput3, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput3, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput3) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput3, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput3),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput3, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput3, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput3, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput3, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput3, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput3, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetDisplayModeList1 : proc(This: ^IDXGIOutput3, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC1) -> HRESULT,
    FindClosestMatchingMode1 : proc(This: ^IDXGIOutput3, pModeToMatch: ^DXGI_MODE_DESC1, pClosestMatch: ^DXGI_MODE_DESC1, pConcernedDevice: ^IUnknown) -> HRESULT,
    GetDisplaySurfaceData1 : proc(This: ^IDXGIOutput3, pDestination: ^IDXGIResource) -> HRESULT,
    DuplicateOutput : proc(This: ^IDXGIOutput3, pDevice: ^IUnknown, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
    SupportsOverlays : proc(This: ^IDXGIOutput3) -> BOOL,
    CheckOverlaySupport : proc(This: ^IDXGIOutput3, EnumFormat: DXGI_FORMAT, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
}
//DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS
DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_NOMINAL_RANGE : u32 :  0x1;
DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_BT709 : u32 :  0x2;
DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_xvYCC : u32 :  0x4
    ;
//DXGI_FRAME_PRESENTATION_MODE
DXGI_FRAME_PRESENTATION_MODE_COMPOSED : u32 :  0;
DXGI_FRAME_PRESENTATION_MODE_OVERLAY : u32 :  1;
DXGI_FRAME_PRESENTATION_MODE_NONE : u32 :  2;
DXGI_FRAME_PRESENTATION_MODE_COMPOSITION_FAILURE : u32 :  3
    ;
//DXGI_OVERLAY_SUPPORT_FLAG
DXGI_OVERLAY_SUPPORT_FLAG_DIRECT : u32 :  0x1;
DXGI_OVERLAY_SUPPORT_FLAG_SCALING : u32 :  0x2
    ;
