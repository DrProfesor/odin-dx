package dx

DXGI_INFO_QUEUE_MESSAGE :: struct {
    Producer: DXGI_DEBUG_ID,
    Category: DXGI_INFO_QUEUE_MESSAGE_CATEGORY,
    Severity: DXGI_INFO_QUEUE_MESSAGE_SEVERITY,
    ID: DXGI_INFO_QUEUE_MESSAGE_ID,
    pDescription: ^char,
    DescriptionByteLength: SIZE_T,
}
DXGI_INFO_QUEUE_FILTER_DESC :: struct {
    NumCategories: UINT,
    pCategoryList: ^DXGI_INFO_QUEUE_MESSAGE_CATEGORY,
    NumSeverities: UINT,
    pSeverityList: ^DXGI_INFO_QUEUE_MESSAGE_SEVERITY,
    NumIDs: UINT,
    pIDList: ^DXGI_INFO_QUEUE_MESSAGE_ID,
}
DXGI_INFO_QUEUE_FILTER :: struct {
    AllowList: DXGI_INFO_QUEUE_FILTER_DESC,
    DenyList: DXGI_INFO_QUEUE_FILTER_DESC,
}
IDXGIInfoQueue :: struct {
    using vtbl: ^IDXGIInfoQueueVtbl
}
IDXGIInfoQueueVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIInfoQueue, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIInfoQueue) -> ULONG,
    Release : proc(This: ^IDXGIInfoQueue) -> ULONG,
    SetMessageCountLimit : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, MessageCountLimit: UINT64) -> HRESULT,
    ClearStoredMessages : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID),
    GetMessage : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, MessageIndex: UINT64, pMessage: ^DXGI_INFO_QUEUE_MESSAGE, pMessageByteLength: ^SIZE_T) -> HRESULT,
    GetNumStoredMessagesAllowedByRetrievalFilters : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT64,
    GetNumStoredMessages : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT64,
    GetNumMessagesDiscardedByMessageCountLimit : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT64,
    GetMessageCountLimit : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT64,
    GetNumMessagesAllowedByStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT64,
    GetNumMessagesDeniedByStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT64,
    AddStorageFilterEntries : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, pFilter: ^DXGI_INFO_QUEUE_FILTER) -> HRESULT,
    GetStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, pFilter: ^DXGI_INFO_QUEUE_FILTER, pFilterByteLength: ^SIZE_T) -> HRESULT,
    ClearStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID),
    PushEmptyStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> HRESULT,
    PushDenyAllStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> HRESULT,
    PushCopyOfStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> HRESULT,
    PushStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, pFilter: ^DXGI_INFO_QUEUE_FILTER) -> HRESULT,
    PopStorageFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID),
    GetStorageFilterStackSize : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT,
    AddRetrievalFilterEntries : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, pFilter: ^DXGI_INFO_QUEUE_FILTER) -> HRESULT,
    GetRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, pFilter: ^DXGI_INFO_QUEUE_FILTER, pFilterByteLength: ^SIZE_T) -> HRESULT,
    ClearRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID),
    PushEmptyRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> HRESULT,
    PushDenyAllRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> HRESULT,
    PushCopyOfRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> HRESULT,
    PushRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, pFilter: ^DXGI_INFO_QUEUE_FILTER) -> HRESULT,
    PopRetrievalFilter : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID),
    GetRetrievalFilterStackSize : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> UINT,
    AddMessage : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Category: DXGI_INFO_QUEUE_MESSAGE_CATEGORY, Severity: DXGI_INFO_QUEUE_MESSAGE_SEVERITY, ID: DXGI_INFO_QUEUE_MESSAGE_ID, pDescription: LPCSTR) -> HRESULT,
    AddApplicationMessage : proc(This: ^IDXGIInfoQueue, Severity: DXGI_INFO_QUEUE_MESSAGE_SEVERITY, pDescription: LPCSTR) -> HRESULT,
    SetBreakOnCategory : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Category: DXGI_INFO_QUEUE_MESSAGE_CATEGORY, bEnable: BOOL) -> HRESULT,
    SetBreakOnSeverity : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Severity: DXGI_INFO_QUEUE_MESSAGE_SEVERITY, bEnable: BOOL) -> HRESULT,
    SetBreakOnID : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, ID: DXGI_INFO_QUEUE_MESSAGE_ID, bEnable: BOOL) -> HRESULT,
    GetBreakOnCategory : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Category: DXGI_INFO_QUEUE_MESSAGE_CATEGORY) -> BOOL,
    GetBreakOnSeverity : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Severity: DXGI_INFO_QUEUE_MESSAGE_SEVERITY) -> BOOL,
    GetBreakOnID : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, ID: DXGI_INFO_QUEUE_MESSAGE_ID) -> BOOL,
    SetMuteDebugOutput : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, bMute: BOOL),
    GetMuteDebugOutput : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID) -> BOOL,
}
IDXGIDebug :: struct {
    using vtbl: ^IDXGIDebugVtbl
}
IDXGIDebugVtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDebug, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDebug) -> ULONG,
    Release : proc(This: ^IDXGIDebug) -> ULONG,
    ReportLiveObjects : proc(This: ^IDXGIDebug, apiid: GUID, flags: DXGI_DEBUG_RLO_FLAGS) -> HRESULT,
}
IDXGIDebug1 :: struct {
    using vtbl: ^IDXGIDebug1Vtbl
}
IDXGIDebug1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDebug1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDebug1) -> ULONG,
    Release : proc(This: ^IDXGIDebug1) -> ULONG,
    ReportLiveObjects : proc(This: ^IDXGIDebug1, apiid: GUID, flags: DXGI_DEBUG_RLO_FLAGS) -> HRESULT,
    EnableLeakTrackingForThread : proc(This: ^IDXGIDebug1),
    DisableLeakTrackingForThread : proc(This: ^IDXGIDebug1),
    IsLeakTrackingEnabledForThread : proc(This: ^IDXGIDebug1) -> BOOL,
}
DXGI_DEBUG_RLO_FLAGS :: enum u32{
    DXGI_DEBUG_RLO_SUMMARY =  0x1,
    DXGI_DEBUG_RLO_DETAIL =  0x2,
    DXGI_DEBUG_RLO_IGNORE_INTERNAL =  0x4,
    DXGI_DEBUG_RLO_ALL =  0x7
    ,
}
DXGI_INFO_QUEUE_MESSAGE_CATEGORY :: enum u32{
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN =  0,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_CATEGORY_SHADER =  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION + 1 ) 
    ,
}
DXGI_INFO_QUEUE_MESSAGE_SEVERITY :: enum u32{
    DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION =  0,
    DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR =  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING =  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO =  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING + 1 ) ,
    DXGI_INFO_QUEUE_MESSAGE_SEVERITY_MESSAGE =  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO + 1 ) 
    ,
}
