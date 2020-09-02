package dx

DXGI_INFO_QUEUE_MESSAGE :: struct {
    Producer: DXGI_DEBUG_ID,
    Category: UINT,
    Severity: UINT,
    ID: DXGI_INFO_QUEUE_MESSAGE_ID,
    pDescription: ^char,
    DescriptionByteLength: SIZE_T,
}
DXGI_INFO_QUEUE_FILTER_DESC :: struct {
    NumCategories: UINT,
    pCategoryList: ^UINT,
    NumSeverities: UINT,
    pSeverityList: ^UINT,
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
    AddMessage : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Category: UINT, Severity: UINT, ID: DXGI_INFO_QUEUE_MESSAGE_ID, pDescription: LPCSTR) -> HRESULT,
    AddApplicationMessage : proc(This: ^IDXGIInfoQueue, Severity: UINT, pDescription: LPCSTR) -> HRESULT,
    SetBreakOnCategory : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Category: UINT, bEnable: BOOL) -> HRESULT,
    SetBreakOnSeverity : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Severity: UINT, bEnable: BOOL) -> HRESULT,
    SetBreakOnID : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, ID: DXGI_INFO_QUEUE_MESSAGE_ID, bEnable: BOOL) -> HRESULT,
    GetBreakOnCategory : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Category: UINT) -> BOOL,
    GetBreakOnSeverity : proc(This: ^IDXGIInfoQueue, Producer: DXGI_DEBUG_ID, Severity: UINT) -> BOOL,
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
    ReportLiveObjects : proc(This: ^IDXGIDebug, apiid: GUID, flags: UINT) -> HRESULT,
}
IDXGIDebug1 :: struct {
    using vtbl: ^IDXGIDebug1Vtbl
}
IDXGIDebug1Vtbl :: struct {
    QueryInterface : proc(This: ^IDXGIDebug1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^IDXGIDebug1) -> ULONG,
    Release : proc(This: ^IDXGIDebug1) -> ULONG,
    ReportLiveObjects : proc(This: ^IDXGIDebug1, apiid: GUID, flags: UINT) -> HRESULT,
    EnableLeakTrackingForThread : proc(This: ^IDXGIDebug1),
    DisableLeakTrackingForThread : proc(This: ^IDXGIDebug1),
    IsLeakTrackingEnabledForThread : proc(This: ^IDXGIDebug1) -> BOOL,
}
//DXGI_DEBUG_RLO_FLAGS
DXGI_DEBUG_RLO_SUMMARY : u32 :  0x1;
DXGI_DEBUG_RLO_DETAIL : u32 :  0x2;
DXGI_DEBUG_RLO_IGNORE_INTERNAL : u32 :  0x4;
DXGI_DEBUG_RLO_ALL : u32 :  0x7
    ;
//DXGI_INFO_QUEUE_MESSAGE_CATEGORY
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN : u32 :  0;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_SHADER : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION + 1 ) 
    ;
//DXGI_INFO_QUEUE_MESSAGE_SEVERITY
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION : u32 :  0;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING + 1 ) ;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_MESSAGE : u32 :  ( DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO + 1 ) 
    ;
