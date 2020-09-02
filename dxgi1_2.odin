package dx

IDXGIDisplayControl :: struct {
    using vtbl: ^IDXGIDisplayControlVtbl
}
IDXGIDisplayControlVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDisplayControl, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDisplayControl) -> ULONG,
    Release : proc(This: ^IDXGIDisplayControl) -> ULONG,
    IsStereoEnabled : proc(This: ^IDXGIDisplayControl) -> BOOL,
    SetStereoEnabled : proc(This: ^IDXGIDisplayControl, enabled: BOOL),
}
DXGI_OUTDUPL_MOVE_RECT :: struct {
    SourcePoint: POINT,
    DestinationRect: RECT,
}
DXGI_OUTDUPL_DESC :: struct {
    ModeDesc: DXGI_MODE_DESC,
    Rotation: DXGI_MODE_ROTATION,
    DesktopImageInSystemMemory: BOOL,
}
DXGI_OUTDUPL_POINTER_POSITION :: struct {
    Position: POINT,
    Visible: BOOL,
}
DXGI_OUTDUPL_POINTER_SHAPE_INFO :: struct {
    Type: UINT,
    Width: UINT,
    Height: UINT,
    Pitch: UINT,
    HotSpot: POINT,
}
DXGI_OUTDUPL_FRAME_INFO :: struct {
    LastPresentTime: LARGE_INTEGER,
    LastMouseUpdateTime: LARGE_INTEGER,
    AccumulatedFrames: UINT,
    RectsCoalesced: BOOL,
    ProtectedContentMaskedOut: BOOL,
    PointerPosition: DXGI_OUTDUPL_POINTER_POSITION,
    TotalMetadataBufferSize: UINT,
    PointerShapeBufferSize: UINT,
}
IDXGIOutputDuplication :: struct {
    using vtbl: ^IDXGIOutputDuplicationVtbl
}
IDXGIOutputDuplicationVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutputDuplication, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutputDuplication) -> ULONG,
    Release : proc(This: ^IDXGIOutputDuplication) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutputDuplication, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutputDuplication, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutputDuplication, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutputDuplication, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutputDuplication, pDesc: ^DXGI_OUTDUPL_DESC),
    AcquireNextFrame : proc(This: ^IDXGIOutputDuplication, TimeoutInMilliseconds: UINT, pFrameInfo: ^DXGI_OUTDUPL_FRAME_INFO, ppDesktopResource: ^^IDXGIResource) -> HRESULT,
    GetFrameDirtyRects : proc(This: ^IDXGIOutputDuplication, DirtyRectsBufferSize: UINT, pDirtyRectsBuffer: ^RECT, pDirtyRectsBufferSizeRequired: ^UINT) -> HRESULT,
    GetFrameMoveRects : proc(This: ^IDXGIOutputDuplication, MoveRectsBufferSize: UINT, pMoveRectBuffer: ^DXGI_OUTDUPL_MOVE_RECT, pMoveRectsBufferSizeRequired: ^UINT) -> HRESULT,
    GetFramePointerShape : proc(This: ^IDXGIOutputDuplication, PointerShapeBufferSize: UINT, pPointerShapeBuffer: rawptr, pPointerShapeBufferSizeRequired: ^UINT, pPointerShapeInfo: ^DXGI_OUTDUPL_POINTER_SHAPE_INFO) -> HRESULT,
    MapDesktopSurface : proc(This: ^IDXGIOutputDuplication, pLockedRect: ^DXGI_MAPPED_RECT) -> HRESULT,
    UnMapDesktopSurface : proc(This: ^IDXGIOutputDuplication) -> HRESULT,
    ReleaseFrame : proc(This: ^IDXGIOutputDuplication) -> HRESULT,
}
IDXGISurface2 :: struct {
    using vtbl: ^IDXGISurface2Vtbl
}
IDXGISurface2Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGISurface2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISurface2) -> ULONG,
    Release : proc(This: ^IDXGISurface2) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISurface2, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISurface2, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISurface2, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISurface2, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISurface2, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGISurface2, pDesc: ^DXGI_SURFACE_DESC) -> HRESULT,
    Map : proc(This: ^IDXGISurface2, pLockedRect: ^DXGI_MAPPED_RECT, MapFlags: UINT) -> HRESULT,
    Unmap : proc(This: ^IDXGISurface2) -> HRESULT,
    GetDC : proc(This: ^IDXGISurface2, Discard: BOOL, phdc: ^HDC) -> HRESULT,
    ReleaseDC : proc(This: ^IDXGISurface2, pDirtyRect: ^RECT) -> HRESULT,
    GetResource : proc(This: ^IDXGISurface2, riid: REFIID, ppParentResource: ^rawptr, pSubresourceIndex: ^UINT) -> HRESULT,
}
IDXGIResource1 :: struct {
    using vtbl: ^IDXGIResource1Vtbl
}
IDXGIResource1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIResource1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIResource1) -> ULONG,
    Release : proc(This: ^IDXGIResource1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIResource1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIResource1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIResource1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIResource1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGIResource1, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    GetSharedHandle : proc(This: ^IDXGIResource1, pSharedHandle: ^HANDLE) -> HRESULT,
    GetUsage : proc(This: ^IDXGIResource1, pUsage: ^DXGI_USAGE) -> HRESULT,
    SetEvictionPriority : proc(This: ^IDXGIResource1, EvictionPriority: UINT) -> HRESULT,
    GetEvictionPriority : proc(This: ^IDXGIResource1, pEvictionPriority: ^UINT) -> HRESULT,
    CreateSubresourceSurface : proc(This: ^IDXGIResource1, index: UINT, ppSurface: ^^IDXGISurface2) -> HRESULT,
    CreateSharedHandle : proc(This: ^IDXGIResource1, pAttributes: ^SECURITY_ATTRIBUTES, dwAccess: DWORD, lpName: LPCWSTR, pHandle: ^HANDLE) -> HRESULT,
}
IDXGIDevice2 :: struct {
    using vtbl: ^IDXGIDevice2Vtbl
}
IDXGIDevice2Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDevice2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDevice2) -> ULONG,
    Release : proc(This: ^IDXGIDevice2) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIDevice2, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIDevice2, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIDevice2, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIDevice2, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetAdapter : proc(This: ^IDXGIDevice2, pAdapter: ^^IDXGIAdapter) -> HRESULT,
    CreateSurface : proc(This: ^IDXGIDevice2, pDesc: ^DXGI_SURFACE_DESC, NumSurfaces: UINT, Usage: DXGI_USAGE, pSharedResource: ^DXGI_SHARED_RESOURCE, ppSurface: ^^IDXGISurface) -> HRESULT,
    QueryResourceResidency : proc(This: ^IDXGIDevice2, ppResources: ^IUnknown, pResidencyStatus: ^DXGI_RESIDENCY, NumResources: UINT) -> HRESULT,
    SetGPUThreadPriority : proc(This: ^IDXGIDevice2, Priority: INT) -> HRESULT,
    GetGPUThreadPriority : proc(This: ^IDXGIDevice2, pPriority: ^INT) -> HRESULT,
    SetMaximumFrameLatency : proc(This: ^IDXGIDevice2, MaxLatency: UINT) -> HRESULT,
    GetMaximumFrameLatency : proc(This: ^IDXGIDevice2, pMaxLatency: ^UINT) -> HRESULT,
    OfferResources : proc(This: ^IDXGIDevice2, NumResources: UINT, ppResources: ^IDXGIResource, Priority: DXGI_OFFER_RESOURCE_PRIORITY) -> HRESULT,
    ReclaimResources : proc(This: ^IDXGIDevice2, NumResources: UINT, ppResources: ^IDXGIResource, pDiscarded: ^BOOL) -> HRESULT,
    EnqueueSetEvent : proc(This: ^IDXGIDevice2, hEvent: HANDLE) -> HRESULT,
}
DXGI_MODE_DESC1 :: struct {
    Width: UINT,
    Height: UINT,
    RefreshRate: DXGI_RATIONAL,
    Format: DXGI_FORMAT,
    ScanlineOrdering: DXGI_MODE_SCANLINE_ORDER,
    Scaling: DXGI_MODE_SCALING,
    Stereo: BOOL,
}
DXGI_SWAP_CHAIN_DESC1 :: struct {
    Width: UINT,
    Height: UINT,
    Format: DXGI_FORMAT,
    Stereo: BOOL,
    SampleDesc: DXGI_SAMPLE_DESC,
    BufferUsage: DXGI_USAGE,
    BufferCount: UINT,
    Scaling: UINT,
    SwapEffect: DXGI_SWAP_EFFECT,
    AlphaMode: UINT,
    Flags: UINT,
}
DXGI_SWAP_CHAIN_FULLSCREEN_DESC :: struct {
    RefreshRate: DXGI_RATIONAL,
    ScanlineOrdering: DXGI_MODE_SCANLINE_ORDER,
    Scaling: DXGI_MODE_SCALING,
    Windowed: BOOL,
}
DXGI_PRESENT_PARAMETERS :: struct {
    DirtyRectsCount: UINT,
    pDirtyRects: ^RECT,
    pScrollRect: ^RECT,
    pScrollOffset: ^POINT,
}
IDXGISwapChain1 :: struct {
    using vtbl: ^IDXGISwapChain1Vtbl
}
IDXGISwapChain1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGISwapChain1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGISwapChain1) -> ULONG,
    Release : proc(This: ^IDXGISwapChain1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGISwapChain1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGISwapChain1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGISwapChain1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGISwapChain1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDevice : proc(This: ^IDXGISwapChain1, riid: REFIID, ppDevice: ^rawptr) -> HRESULT,
    Present : proc(This: ^IDXGISwapChain1, SyncInterval: UINT, Flags: UINT) -> HRESULT,
    GetBuffer : proc(This: ^IDXGISwapChain1, Buffer: UINT, riid: REFIID, ppSurface: ^rawptr) -> HRESULT,
    SetFullscreenState : proc(This: ^IDXGISwapChain1, Fullscreen: BOOL, pTarget: ^IDXGIOutput) -> HRESULT,
    GetFullscreenState : proc(This: ^IDXGISwapChain1, pFullscreen: ^BOOL, ppTarget: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGISwapChain1, pDesc: ^DXGI_SWAP_CHAIN_DESC) -> HRESULT,
    ResizeBuffers : proc(This: ^IDXGISwapChain1, BufferCount: UINT, Width: UINT, Height: UINT, NewFormat: DXGI_FORMAT, SwapChainFlags: UINT) -> HRESULT,
    ResizeTarget : proc(This: ^IDXGISwapChain1, pNewTargetParameters: ^DXGI_MODE_DESC) -> HRESULT,
    GetContainingOutput : proc(This: ^IDXGISwapChain1, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGISwapChain1, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetLastPresentCount : proc(This: ^IDXGISwapChain1, pLastPresentCount: ^UINT) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGISwapChain1, pDesc: ^DXGI_SWAP_CHAIN_DESC1) -> HRESULT,
    GetFullscreenDesc : proc(This: ^IDXGISwapChain1, pDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC) -> HRESULT,
    GetHwnd : proc(This: ^IDXGISwapChain1, pHwnd: ^HWND) -> HRESULT,
    GetCoreWindow : proc(This: ^IDXGISwapChain1, refiid: REFIID, ppUnk: ^rawptr) -> HRESULT,
    Present1 : proc(This: ^IDXGISwapChain1, SyncInterval: UINT, PresentFlags: UINT, pPresentParameters: ^DXGI_PRESENT_PARAMETERS) -> HRESULT,
    IsTemporaryMonoSupported : proc(This: ^IDXGISwapChain1) -> BOOL,
    GetRestrictToOutput : proc(This: ^IDXGISwapChain1, ppRestrictToOutput: ^^IDXGIOutput) -> HRESULT,
    SetBackgroundColor : proc(This: ^IDXGISwapChain1, pColor: ^DXGI_RGBA) -> HRESULT,
    GetBackgroundColor : proc(This: ^IDXGISwapChain1, pColor: ^DXGI_RGBA) -> HRESULT,
    SetRotation : proc(This: ^IDXGISwapChain1, Rotation: DXGI_MODE_ROTATION) -> HRESULT,
    GetRotation : proc(This: ^IDXGISwapChain1, pRotation: ^DXGI_MODE_ROTATION) -> HRESULT,
}
IDXGIFactory2 :: struct {
    using vtbl: ^IDXGIFactory2Vtbl
}
IDXGIFactory2Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIFactory2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIFactory2) -> ULONG,
    Release : proc(This: ^IDXGIFactory2) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIFactory2, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIFactory2, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIFactory2, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIFactory2, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumAdapters : proc(This: ^IDXGIFactory2, Adapter: UINT, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    MakeWindowAssociation : proc(This: ^IDXGIFactory2, WindowHandle: HWND, Flags: UINT) -> HRESULT,
    GetWindowAssociation : proc(This: ^IDXGIFactory2, pWindowHandle: ^HWND) -> HRESULT,
    CreateSwapChain : proc(This: ^IDXGIFactory2, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC, ppSwapChain: ^^IDXGISwapChain) -> HRESULT,
    CreateSoftwareAdapter : proc(This: ^IDXGIFactory2, Module: HMODULE, ppAdapter: ^^IDXGIAdapter) -> HRESULT,
    EnumAdapters1 : proc(This: ^IDXGIFactory2, Adapter: UINT, ppAdapter: ^^IDXGIAdapter1) -> HRESULT,
    IsCurrent : proc(This: ^IDXGIFactory2) -> BOOL,
    IsWindowedStereoEnabled : proc(This: ^IDXGIFactory2) -> BOOL,
    CreateSwapChainForHwnd : proc(This: ^IDXGIFactory2, pDevice: ^IUnknown, hWnd: HWND, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc: ^DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    CreateSwapChainForCoreWindow : proc(This: ^IDXGIFactory2, pDevice: ^IUnknown, pWindow: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
    GetSharedResourceAdapterLuid : proc(This: ^IDXGIFactory2, hResource: HANDLE, pLuid: ^LUID) -> HRESULT,
    RegisterStereoStatusWindow : proc(This: ^IDXGIFactory2, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterStereoStatusEvent : proc(This: ^IDXGIFactory2, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterStereoStatus : proc(This: ^IDXGIFactory2, dwCookie: DWORD),
    RegisterOcclusionStatusWindow : proc(This: ^IDXGIFactory2, WindowHandle: HWND, wMsg: UINT, pdwCookie: ^DWORD) -> HRESULT,
    RegisterOcclusionStatusEvent : proc(This: ^IDXGIFactory2, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterOcclusionStatus : proc(This: ^IDXGIFactory2, dwCookie: DWORD),
    CreateSwapChainForComposition : proc(This: ^IDXGIFactory2, pDevice: ^IUnknown, pDesc: ^DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput: ^IDXGIOutput, ppSwapChain: ^^IDXGISwapChain1) -> HRESULT,
}
DXGI_ADAPTER_DESC2 :: struct {
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
    GraphicsPreemptionGranularity: UINT,
    ComputePreemptionGranularity: UINT,
}
IDXGIAdapter2 :: struct {
    using vtbl: ^IDXGIAdapter2Vtbl
}
IDXGIAdapter2Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIAdapter2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIAdapter2) -> ULONG,
    Release : proc(This: ^IDXGIAdapter2) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIAdapter2, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIAdapter2, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIAdapter2, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIAdapter2, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumOutputs : proc(This: ^IDXGIAdapter2, Output: UINT, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGIAdapter2, pDesc: ^DXGI_ADAPTER_DESC) -> HRESULT,
    CheckInterfaceSupport : proc(This: ^IDXGIAdapter2, InterfaceName: REFGUID, pUMDVersion: ^LARGE_INTEGER) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGIAdapter2, pDesc: ^DXGI_ADAPTER_DESC1) -> HRESULT,
    GetDesc2 : proc(This: ^IDXGIAdapter2, pDesc: ^DXGI_ADAPTER_DESC2) -> HRESULT,
}
IDXGIOutput1 :: struct {
    using vtbl: ^IDXGIOutput1Vtbl
}
IDXGIOutput1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput1) -> ULONG,
    Release : proc(This: ^IDXGIOutput1) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput1, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput1, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput1, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput1, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput1, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput1, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput1, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput1) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput1, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput1),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput1, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput1, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput1, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput1, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput1, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput1, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetDisplayModeList1 : proc(This: ^IDXGIOutput1, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC1) -> HRESULT,
    FindClosestMatchingMode1 : proc(This: ^IDXGIOutput1, pModeToMatch: ^DXGI_MODE_DESC1, pClosestMatch: ^DXGI_MODE_DESC1, pConcernedDevice: ^IUnknown) -> HRESULT,
    GetDisplaySurfaceData1 : proc(This: ^IDXGIOutput1, pDestination: ^IDXGIResource) -> HRESULT,
    DuplicateOutput : proc(This: ^IDXGIOutput1, pDevice: ^IUnknown, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
}
//DXGI_OUTDUPL_POINTER_SHAPE_TYPE
DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MONOCHROME : u32 :  0x1;
DXGI_OUTDUPL_POINTER_SHAPE_TYPE_COLOR : u32 :  0x2;
DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MASKED_COLOR : u32 :  0x4
    ;
//DXGI_ALPHA_MODE
DXGI_ALPHA_MODE_UNSPECIFIED : u32 :  0;
DXGI_ALPHA_MODE_PREMULTIPLIED : u32 :  1;
DXGI_ALPHA_MODE_STRAIGHT : u32 :  2;
DXGI_ALPHA_MODE_IGNORE : u32 :  3;
DXGI_ALPHA_MODE_FORCE_DWORD : u32 :  0xffffffff
    ;
//_DXGI_OFFER_RESOURCE_PRIORITY
DXGI_OFFER_RESOURCE_PRIORITY_LOW : u32 :  1;
DXGI_OFFER_RESOURCE_PRIORITY_NORMAL : u32 :  ( DXGI_OFFER_RESOURCE_PRIORITY_LOW + 1 ) ;
DXGI_OFFER_RESOURCE_PRIORITY_HIGH : u32 :  ( DXGI_OFFER_RESOURCE_PRIORITY_NORMAL + 1 )
    ;
//DXGI_SCALING
DXGI_SCALING_STRETCH : u32 :  0;
DXGI_SCALING_NONE : u32 :  1;
DXGI_SCALING_ASPECT_RATIO_STRETCH : u32 :  2
    ;
//DXGI_GRAPHICS_PREEMPTION_GRANULARITY
DXGI_GRAPHICS_PREEMPTION_DMA_BUFFER_BOUNDARY : u32 :  0;
DXGI_GRAPHICS_PREEMPTION_PRIMITIVE_BOUNDARY : u32 :  1;
DXGI_GRAPHICS_PREEMPTION_TRIANGLE_BOUNDARY : u32 :  2;
DXGI_GRAPHICS_PREEMPTION_PIXEL_BOUNDARY : u32 :  3;
DXGI_GRAPHICS_PREEMPTION_INSTRUCTION_BOUNDARY : u32 :  4
    ;
//DXGI_COMPUTE_PREEMPTION_GRANULARITY
DXGI_COMPUTE_PREEMPTION_DMA_BUFFER_BOUNDARY : u32 :  0;
DXGI_COMPUTE_PREEMPTION_DISPATCH_BOUNDARY : u32 :  1;
DXGI_COMPUTE_PREEMPTION_THREAD_GROUP_BOUNDARY : u32 :  2;
DXGI_COMPUTE_PREEMPTION_THREAD_BOUNDARY : u32 :  3;
DXGI_COMPUTE_PREEMPTION_INSTRUCTION_BOUNDARY : u32 :  4
    ;
