package dx

DXGI_ADAPTER_DESC3 :: struct {
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
    GraphicsPreemptionGranularity: DXGI_GRAPHICS_PREEMPTION_GRANULARITY,
    ComputePreemptionGranularity: DXGI_COMPUTE_PREEMPTION_GRANULARITY,
}
IDXGIAdapter4 :: struct {
    using vtbl: ^IDXGIAdapter4Vtbl
}
IDXGIAdapter4Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIAdapter4, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIAdapter4) -> ULONG,
    Release : proc(This: ^IDXGIAdapter4) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIAdapter4, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIAdapter4, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIAdapter4, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIAdapter4, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    EnumOutputs : proc(This: ^IDXGIAdapter4, Output: UINT, ppOutput: ^^IDXGIOutput) -> HRESULT,
    GetDesc : proc(This: ^IDXGIAdapter4, pDesc: ^DXGI_ADAPTER_DESC) -> HRESULT,
    CheckInterfaceSupport : proc(This: ^IDXGIAdapter4, InterfaceName: REFGUID, pUMDVersion: ^LARGE_INTEGER) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGIAdapter4, pDesc: ^DXGI_ADAPTER_DESC1) -> HRESULT,
    GetDesc2 : proc(This: ^IDXGIAdapter4, pDesc: ^DXGI_ADAPTER_DESC2) -> HRESULT,
    RegisterHardwareContentProtectionTeardownStatusEvent : proc(This: ^IDXGIAdapter4, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterHardwareContentProtectionTeardownStatus : proc(This: ^IDXGIAdapter4, dwCookie: DWORD),
    QueryVideoMemoryInfo : proc(This: ^IDXGIAdapter4, NodeIndex: UINT, MemorySegmentGroup: DXGI_MEMORY_SEGMENT_GROUP, pVideoMemoryInfo: ^DXGI_QUERY_VIDEO_MEMORY_INFO) -> HRESULT,
    SetVideoMemoryReservation : proc(This: ^IDXGIAdapter4, NodeIndex: UINT, MemorySegmentGroup: DXGI_MEMORY_SEGMENT_GROUP, Reservation: UINT64) -> HRESULT,
    RegisterVideoMemoryBudgetChangeNotificationEvent : proc(This: ^IDXGIAdapter4, hEvent: HANDLE, pdwCookie: ^DWORD) -> HRESULT,
    UnregisterVideoMemoryBudgetChangeNotification : proc(This: ^IDXGIAdapter4, dwCookie: DWORD),
    GetDesc3 : proc(This: ^IDXGIAdapter4, pDesc: ^DXGI_ADAPTER_DESC3) -> HRESULT,
}
DXGI_OUTPUT_DESC1 :: struct {
    DeviceName: [32]WCHAR,
    DesktopCoordinates: RECT,
    AttachedToDesktop: BOOL,
    Rotation: DXGI_MODE_ROTATION,
    Monitor: HMONITOR,
    BitsPerColor: UINT,
    ColorSpace: DXGI_COLOR_SPACE_TYPE,
    RedPrimary: [2]FLOAT,
    GreenPrimary: [2]FLOAT,
    BluePrimary: [2]FLOAT,
    WhitePoint: [2]FLOAT,
    MinLuminance: FLOAT,
    MaxLuminance: FLOAT,
    MaxFullFrameLuminance: FLOAT,
}
IDXGIOutput6 :: struct {
    using vtbl: ^IDXGIOutput6Vtbl
}
IDXGIOutput6Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIOutput6, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIOutput6) -> ULONG,
    Release : proc(This: ^IDXGIOutput6) -> ULONG,
    SetPrivateData : proc(This: ^IDXGIOutput6, Name: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^IDXGIOutput6, Name: REFGUID, pUnknown: ^IUnknown) -> HRESULT,
    GetPrivateData : proc(This: ^IDXGIOutput6, Name: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    GetParent : proc(This: ^IDXGIOutput6, riid: REFIID, ppParent: ^rawptr) -> HRESULT,
    GetDesc : proc(This: ^IDXGIOutput6, pDesc: ^DXGI_OUTPUT_DESC) -> HRESULT,
    GetDisplayModeList : proc(This: ^IDXGIOutput6, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC) -> HRESULT,
    FindClosestMatchingMode : proc(This: ^IDXGIOutput6, pModeToMatch: ^DXGI_MODE_DESC, pClosestMatch: ^DXGI_MODE_DESC, pConcernedDevice: ^IUnknown) -> HRESULT,
    WaitForVBlank : proc(This: ^IDXGIOutput6) -> HRESULT,
    TakeOwnership : proc(This: ^IDXGIOutput6, pDevice: ^IUnknown, Exclusive: BOOL) -> HRESULT,
    ReleaseOwnership : proc(This: ^IDXGIOutput6),
    GetGammaControlCapabilities : proc(This: ^IDXGIOutput6, pGammaCaps: ^DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT,
    SetGammaControl : proc(This: ^IDXGIOutput6, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    GetGammaControl : proc(This: ^IDXGIOutput6, pArray: ^DXGI_GAMMA_CONTROL) -> HRESULT,
    SetDisplaySurface : proc(This: ^IDXGIOutput6, pScanoutSurface: ^IDXGISurface) -> HRESULT,
    GetDisplaySurfaceData : proc(This: ^IDXGIOutput6, pDestination: ^IDXGISurface) -> HRESULT,
    GetFrameStatistics : proc(This: ^IDXGIOutput6, pStats: ^DXGI_FRAME_STATISTICS) -> HRESULT,
    GetDisplayModeList1 : proc(This: ^IDXGIOutput6, EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ^UINT, pDesc: ^DXGI_MODE_DESC1) -> HRESULT,
    FindClosestMatchingMode1 : proc(This: ^IDXGIOutput6, pModeToMatch: ^DXGI_MODE_DESC1, pClosestMatch: ^DXGI_MODE_DESC1, pConcernedDevice: ^IUnknown) -> HRESULT,
    GetDisplaySurfaceData1 : proc(This: ^IDXGIOutput6, pDestination: ^IDXGIResource) -> HRESULT,
    DuplicateOutput : proc(This: ^IDXGIOutput6, pDevice: ^IUnknown, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
    SupportsOverlays : proc(This: ^IDXGIOutput6) -> BOOL,
    CheckOverlaySupport : proc(This: ^IDXGIOutput6, EnumFormat: DXGI_FORMAT, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
    CheckOverlayColorSpaceSupport : proc(This: ^IDXGIOutput6, Format: DXGI_FORMAT, ColorSpace: DXGI_COLOR_SPACE_TYPE, pConcernedDevice: ^IUnknown, pFlags: ^UINT) -> HRESULT,
    DuplicateOutput1 : proc(This: ^IDXGIOutput6, pDevice: ^IUnknown, Flags: UINT, SupportedFormatsCount: UINT, pSupportedFormats: ^DXGI_FORMAT, ppOutputDuplication: ^^IDXGIOutputDuplication) -> HRESULT,
    GetDesc1 : proc(This: ^IDXGIOutput6, pDesc: ^DXGI_OUTPUT_DESC1) -> HRESULT,
    CheckHardwareCompositionSupport : proc(This: ^IDXGIOutput6, pFlags: ^UINT) -> HRESULT,
}
//DXGI_ADAPTER_FLAG3
DXGI_ADAPTER_FLAG3_NONE : u32 =  0;
DXGI_ADAPTER_FLAG3_REMOTE : u32 =  1;
DXGI_ADAPTER_FLAG3_SOFTWARE : u32 =  2;
DXGI_ADAPTER_FLAG3_ACG_COMPATIBLE : u32 =  4;
DXGI_ADAPTER_FLAG3_FORCE_DWORD : u32 =  0xffffffff
    ;
//DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAGS
DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_FULLSCREEN : u32 =  1;
DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_WINDOWED : u32 =  2;
DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_CURSOR_STRETCHED : u32 =  4
    ;
