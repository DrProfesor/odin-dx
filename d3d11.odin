package dx

D3D11_INPUT_ELEMENT_DESC :: struct {
    SemanticName: LPCSTR,
    SemanticIndex: UINT,
    Format: DXGI_FORMAT,
    InputSlot: UINT,
    AlignedByteOffset: UINT,
    InputSlotClass: D3D11_INPUT_CLASSIFICATION,
    InstanceDataStepRate: UINT,
}
D3D11_SO_DECLARATION_ENTRY :: struct {
    Stream: UINT,
    SemanticName: LPCSTR,
    SemanticIndex: UINT,
    StartComponent: BYTE,
    ComponentCount: BYTE,
    OutputSlot: BYTE,
}
D3D11_VIEWPORT :: struct {
    TopLeftX: FLOAT,
    TopLeftY: FLOAT,
    Width: FLOAT,
    Height: FLOAT,
    MinDepth: FLOAT,
    MaxDepth: FLOAT,
}
D3D11_DRAW_INSTANCED_INDIRECT_ARGS :: struct {
    VertexCountPerInstance: UINT,
    InstanceCount: UINT,
    StartVertexLocation: UINT,
    StartInstanceLocation: UINT,
}
D3D11_DRAW_INDEXED_INSTANCED_INDIRECT_ARGS :: struct {
    IndexCountPerInstance: UINT,
    InstanceCount: UINT,
    StartIndexLocation: UINT,
    BaseVertexLocation: INT,
    StartInstanceLocation: UINT,
}
D3D11_BOX :: struct {
    left: UINT,
    top: UINT,
    front: UINT,
    right: UINT,
    bottom: UINT,
    back: UINT,
}
ID3D11DeviceChild :: struct {
    using vtbl: ^ID3D11DeviceChildVtbl
}
ID3D11DeviceChildVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DeviceChild, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DeviceChild) -> ULONG,
    Release : proc(This: ^ID3D11DeviceChild) -> ULONG,
    GetDevice : proc(This: ^ID3D11DeviceChild, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DeviceChild, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DeviceChild, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DeviceChild, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
D3D11_DEPTH_STENCILOP_DESC :: struct {
    StencilFailOp: D3D11_STENCIL_OP,
    StencilDepthFailOp: D3D11_STENCIL_OP,
    StencilPassOp: D3D11_STENCIL_OP,
    StencilFunc: D3D11_COMPARISON_FUNC,
}
D3D11_DEPTH_STENCIL_DESC :: struct {
    DepthEnable: BOOL,
    DepthWriteMask: D3D11_DEPTH_WRITE_MASK,
    DepthFunc: D3D11_COMPARISON_FUNC,
    StencilEnable: BOOL,
    StencilReadMask: UINT8,
    StencilWriteMask: UINT8,
    FrontFace: D3D11_DEPTH_STENCILOP_DESC,
    BackFace: D3D11_DEPTH_STENCILOP_DESC,
}
ID3D11DepthStencilState :: struct {
    using vtbl: ^ID3D11DepthStencilStateVtbl
}
ID3D11DepthStencilStateVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DepthStencilState, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DepthStencilState) -> ULONG,
    Release : proc(This: ^ID3D11DepthStencilState) -> ULONG,
    GetDevice : proc(This: ^ID3D11DepthStencilState, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DepthStencilState, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DepthStencilState, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DepthStencilState, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11DepthStencilState, pDesc: ^D3D11_DEPTH_STENCIL_DESC),
}
D3D11_RENDER_TARGET_BLEND_DESC :: struct {
    BlendEnable: BOOL,
    SrcBlend: D3D11_BLEND,
    DestBlend: D3D11_BLEND,
    BlendOp: D3D11_BLEND_OP,
    SrcBlendAlpha: D3D11_BLEND,
    DestBlendAlpha: D3D11_BLEND,
    BlendOpAlpha: D3D11_BLEND_OP,
    RenderTargetWriteMask: UINT8,
}
D3D11_BLEND_DESC :: struct {
    AlphaToCoverageEnable: BOOL,
    IndependentBlendEnable: BOOL,
    RenderTarget: [8]D3D11_RENDER_TARGET_BLEND_DESC,
}
ID3D11BlendState :: struct {
    using vtbl: ^ID3D11BlendStateVtbl
}
ID3D11BlendStateVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11BlendState, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11BlendState) -> ULONG,
    Release : proc(This: ^ID3D11BlendState) -> ULONG,
    GetDevice : proc(This: ^ID3D11BlendState, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11BlendState, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11BlendState, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11BlendState, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11BlendState, pDesc: ^D3D11_BLEND_DESC),
}
D3D11_RASTERIZER_DESC :: struct {
    FillMode: D3D11_FILL_MODE,
    CullMode: D3D11_CULL_MODE,
    FrontCounterClockwise: BOOL,
    DepthBias: INT,
    DepthBiasClamp: FLOAT,
    SlopeScaledDepthBias: FLOAT,
    DepthClipEnable: BOOL,
    ScissorEnable: BOOL,
    MultisampleEnable: BOOL,
    AntialiasedLineEnable: BOOL,
}
ID3D11RasterizerState :: struct {
    using vtbl: ^ID3D11RasterizerStateVtbl
}
ID3D11RasterizerStateVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11RasterizerState, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11RasterizerState) -> ULONG,
    Release : proc(This: ^ID3D11RasterizerState) -> ULONG,
    GetDevice : proc(This: ^ID3D11RasterizerState, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11RasterizerState, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11RasterizerState, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11RasterizerState, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11RasterizerState, pDesc: ^D3D11_RASTERIZER_DESC),
}
D3D11_SUBRESOURCE_DATA :: struct {
    pSysMem: rawptr,
    SysMemPitch: UINT,
    SysMemSlicePitch: UINT,
}
D3D11_MAPPED_SUBRESOURCE :: struct {
    pData: rawptr,
    RowPitch: UINT,
    DepthPitch: UINT,
}
ID3D11Resource :: struct {
    using vtbl: ^ID3D11ResourceVtbl
}
ID3D11ResourceVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Resource, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Resource) -> ULONG,
    Release : proc(This: ^ID3D11Resource) -> ULONG,
    GetDevice : proc(This: ^ID3D11Resource, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Resource, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Resource, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Resource, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Resource, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Resource, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Resource) -> UINT,
}
D3D11_BUFFER_DESC :: struct {
    ByteWidth: UINT,
    Usage: D3D11_USAGE,
    BindFlags: D3D11_BIND_FLAG,
    CPUAccessFlags: UINT,
    MiscFlags: UINT,
    StructureByteStride: UINT,
}
ID3D11Buffer :: struct {
    using vtbl: ^ID3D11BufferVtbl
}
ID3D11BufferVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Buffer, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Buffer) -> ULONG,
    Release : proc(This: ^ID3D11Buffer) -> ULONG,
    GetDevice : proc(This: ^ID3D11Buffer, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Buffer, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Buffer, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Buffer, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Buffer, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Buffer, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Buffer) -> UINT,
    GetDesc : proc(This: ^ID3D11Buffer, pDesc: ^D3D11_BUFFER_DESC),
}
D3D11_TEXTURE1D_DESC :: struct {
    Width: UINT,
    MipLevels: UINT,
    ArraySize: UINT,
    Format: DXGI_FORMAT,
    Usage: D3D11_USAGE,
    BindFlags: UINT,
    CPUAccessFlags: UINT,
    MiscFlags: UINT,
}
ID3D11Texture1D :: struct {
    using vtbl: ^ID3D11Texture1DVtbl
}
ID3D11Texture1DVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Texture1D, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Texture1D) -> ULONG,
    Release : proc(This: ^ID3D11Texture1D) -> ULONG,
    GetDevice : proc(This: ^ID3D11Texture1D, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Texture1D, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Texture1D, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Texture1D, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Texture1D, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Texture1D, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Texture1D) -> UINT,
    GetDesc : proc(This: ^ID3D11Texture1D, pDesc: ^D3D11_TEXTURE1D_DESC),
}
D3D11_TEXTURE2D_DESC :: struct {
    Width: UINT,
    Height: UINT,
    MipLevels: UINT,
    ArraySize: UINT,
    Format: DXGI_FORMAT,
    SampleDesc: DXGI_SAMPLE_DESC,
    Usage: D3D11_USAGE,
    BindFlags: UINT,
    CPUAccessFlags: UINT,
    MiscFlags: UINT,
}
ID3D11Texture2D :: struct {
    using vtbl: ^ID3D11Texture2DVtbl
}
ID3D11Texture2DVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Texture2D, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Texture2D) -> ULONG,
    Release : proc(This: ^ID3D11Texture2D) -> ULONG,
    GetDevice : proc(This: ^ID3D11Texture2D, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Texture2D, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Texture2D, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Texture2D, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Texture2D, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Texture2D, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Texture2D) -> UINT,
    GetDesc : proc(This: ^ID3D11Texture2D, pDesc: ^D3D11_TEXTURE2D_DESC),
}
D3D11_TEXTURE3D_DESC :: struct {
    Width: UINT,
    Height: UINT,
    Depth: UINT,
    MipLevels: UINT,
    Format: DXGI_FORMAT,
    Usage: D3D11_USAGE,
    BindFlags: UINT,
    CPUAccessFlags: UINT,
    MiscFlags: UINT,
}
ID3D11Texture3D :: struct {
    using vtbl: ^ID3D11Texture3DVtbl
}
ID3D11Texture3DVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Texture3D, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Texture3D) -> ULONG,
    Release : proc(This: ^ID3D11Texture3D) -> ULONG,
    GetDevice : proc(This: ^ID3D11Texture3D, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Texture3D, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Texture3D, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Texture3D, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Texture3D, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Texture3D, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Texture3D) -> UINT,
    GetDesc : proc(This: ^ID3D11Texture3D, pDesc: ^D3D11_TEXTURE3D_DESC),
}
ID3D11View :: struct {
    using vtbl: ^ID3D11ViewVtbl
}
ID3D11ViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11View, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11View) -> ULONG,
    Release : proc(This: ^ID3D11View) -> ULONG,
    GetDevice : proc(This: ^ID3D11View, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11View, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11View, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11View, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11View, ppResource: ^^ID3D11Resource),
}
D3D11_BUFFER_SRV :: struct {
    _0: union {
        UINT, //FirstElement
        // UINT, //ElementOffset
    },
    _1: union {
        // UINT, //NumElements
        UINT, //ElementWidth
    },
}
D3D11_BUFFEREX_SRV :: struct {
    FirstElement: UINT,
    NumElements: UINT,
    Flags: UINT,
}
D3D11_TEX1D_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
}
D3D11_TEX1D_ARRAY_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX2D_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
}
D3D11_TEX2D_ARRAY_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX3D_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
}
D3D11_TEXCUBE_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
}
D3D11_TEXCUBE_ARRAY_SRV :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
    First2DArrayFace: UINT,
    NumCubes: UINT,
}
D3D11_TEX2DMS_SRV :: struct {
    UnusedField_NothingToDefine: UINT,
}
D3D11_TEX2DMS_ARRAY_SRV :: struct {
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_SHADER_RESOURCE_VIEW_DESC :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_SRV_DIMENSION,
    _2: union {
        D3D11_BUFFER_SRV, //Buffer
        D3D11_TEX1D_SRV, //Texture1D
        D3D11_TEX1D_ARRAY_SRV, //Texture1DArray
        D3D11_TEX2D_SRV, //Texture2D
        D3D11_TEX2D_ARRAY_SRV, //Texture2DArray
        D3D11_TEX2DMS_SRV, //Texture2DMS
        D3D11_TEX2DMS_ARRAY_SRV, //Texture2DMSArray
        D3D11_TEX3D_SRV, //Texture3D
        D3D11_TEXCUBE_SRV, //TextureCube
        D3D11_TEXCUBE_ARRAY_SRV, //TextureCubeArray
        D3D11_BUFFEREX_SRV, //BufferEx
    },
}
ID3D11ShaderResourceView :: struct {
    using vtbl: ^ID3D11ShaderResourceViewVtbl
}
ID3D11ShaderResourceViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11ShaderResourceView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11ShaderResourceView) -> ULONG,
    Release : proc(This: ^ID3D11ShaderResourceView) -> ULONG,
    GetDevice : proc(This: ^ID3D11ShaderResourceView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11ShaderResourceView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11ShaderResourceView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11ShaderResourceView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11ShaderResourceView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11ShaderResourceView, pDesc: ^D3D11_SHADER_RESOURCE_VIEW_DESC),
}
D3D11_BUFFER_RTV :: struct {
    _0: union {
        // UINT, //FirstElement
        UINT, //ElementOffset
    },
    _1: union {
        // UINT, //NumElements
        UINT, //ElementWidth
    },
}
D3D11_TEX1D_RTV :: struct {
    MipSlice: UINT,
}
D3D11_TEX1D_ARRAY_RTV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX2D_RTV :: struct {
    MipSlice: UINT,
}
D3D11_TEX2DMS_RTV :: struct {
    UnusedField_NothingToDefine: UINT,
}
D3D11_TEX2D_ARRAY_RTV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX2DMS_ARRAY_RTV :: struct {
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX3D_RTV :: struct {
    MipSlice: UINT,
    FirstWSlice: UINT,
    WSize: UINT,
}
D3D11_RENDER_TARGET_VIEW_DESC :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_RTV_DIMENSION,
    _2: union {
        D3D11_BUFFER_RTV, //Buffer
        D3D11_TEX1D_RTV, //Texture1D
        D3D11_TEX1D_ARRAY_RTV, //Texture1DArray
        D3D11_TEX2D_RTV, //Texture2D
        D3D11_TEX2D_ARRAY_RTV, //Texture2DArray
        D3D11_TEX2DMS_RTV, //Texture2DMS
        D3D11_TEX2DMS_ARRAY_RTV, //Texture2DMSArray
        D3D11_TEX3D_RTV, //Texture3D
    },
}
ID3D11RenderTargetView :: struct {
    using vtbl: ^ID3D11RenderTargetViewVtbl
}
ID3D11RenderTargetViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11RenderTargetView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11RenderTargetView) -> ULONG,
    Release : proc(This: ^ID3D11RenderTargetView) -> ULONG,
    GetDevice : proc(This: ^ID3D11RenderTargetView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11RenderTargetView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11RenderTargetView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11RenderTargetView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11RenderTargetView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11RenderTargetView, pDesc: ^D3D11_RENDER_TARGET_VIEW_DESC),
}
D3D11_TEX1D_DSV :: struct {
    MipSlice: UINT,
}
D3D11_TEX1D_ARRAY_DSV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX2D_DSV :: struct {
    MipSlice: UINT,
}
D3D11_TEX2D_ARRAY_DSV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX2DMS_DSV :: struct {
    UnusedField_NothingToDefine: UINT,
}
D3D11_TEX2DMS_ARRAY_DSV :: struct {
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_DEPTH_STENCIL_VIEW_DESC :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_DSV_DIMENSION,
    Flags: UINT,
    _3: union {
        D3D11_TEX1D_DSV, //Texture1D
        D3D11_TEX1D_ARRAY_DSV, //Texture1DArray
        D3D11_TEX2D_DSV, //Texture2D
        D3D11_TEX2D_ARRAY_DSV, //Texture2DArray
        D3D11_TEX2DMS_DSV, //Texture2DMS
        D3D11_TEX2DMS_ARRAY_DSV, //Texture2DMSArray
    },
}
ID3D11DepthStencilView :: struct {
    using vtbl: ^ID3D11DepthStencilViewVtbl
}
ID3D11DepthStencilViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DepthStencilView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DepthStencilView) -> ULONG,
    Release : proc(This: ^ID3D11DepthStencilView) -> ULONG,
    GetDevice : proc(This: ^ID3D11DepthStencilView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DepthStencilView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DepthStencilView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DepthStencilView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11DepthStencilView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11DepthStencilView, pDesc: ^D3D11_DEPTH_STENCIL_VIEW_DESC),
}
D3D11_BUFFER_UAV :: struct {
    FirstElement: UINT,
    NumElements: UINT,
    Flags: UINT,
}
D3D11_TEX1D_UAV :: struct {
    MipSlice: UINT,
}
D3D11_TEX1D_ARRAY_UAV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX2D_UAV :: struct {
    MipSlice: UINT,
}
D3D11_TEX2D_ARRAY_UAV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_TEX3D_UAV :: struct {
    MipSlice: UINT,
    FirstWSlice: UINT,
    WSize: UINT,
}
D3D11_UNORDERED_ACCESS_VIEW_DESC :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_UAV_DIMENSION,
    _2: union {
        D3D11_BUFFER_UAV, //Buffer
        D3D11_TEX1D_UAV, //Texture1D
        D3D11_TEX1D_ARRAY_UAV, //Texture1DArray
        D3D11_TEX2D_UAV, //Texture2D
        D3D11_TEX2D_ARRAY_UAV, //Texture2DArray
        D3D11_TEX3D_UAV, //Texture3D
    },
}
ID3D11UnorderedAccessView :: struct {
    using vtbl: ^ID3D11UnorderedAccessViewVtbl
}
ID3D11UnorderedAccessViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11UnorderedAccessView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11UnorderedAccessView) -> ULONG,
    Release : proc(This: ^ID3D11UnorderedAccessView) -> ULONG,
    GetDevice : proc(This: ^ID3D11UnorderedAccessView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11UnorderedAccessView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11UnorderedAccessView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11UnorderedAccessView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11UnorderedAccessView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11UnorderedAccessView, pDesc: ^D3D11_UNORDERED_ACCESS_VIEW_DESC),
}
ID3D11VertexShader :: struct {
    using vtbl: ^ID3D11VertexShaderVtbl
}
ID3D11VertexShaderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VertexShader, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VertexShader) -> ULONG,
    Release : proc(This: ^ID3D11VertexShader) -> ULONG,
    GetDevice : proc(This: ^ID3D11VertexShader, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VertexShader, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VertexShader, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VertexShader, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11HullShader :: struct {
    using vtbl: ^ID3D11HullShaderVtbl
}
ID3D11HullShaderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11HullShader, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11HullShader) -> ULONG,
    Release : proc(This: ^ID3D11HullShader) -> ULONG,
    GetDevice : proc(This: ^ID3D11HullShader, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11HullShader, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11HullShader, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11HullShader, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11DomainShader :: struct {
    using vtbl: ^ID3D11DomainShaderVtbl
}
ID3D11DomainShaderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DomainShader, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DomainShader) -> ULONG,
    Release : proc(This: ^ID3D11DomainShader) -> ULONG,
    GetDevice : proc(This: ^ID3D11DomainShader, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DomainShader, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DomainShader, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DomainShader, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11GeometryShader :: struct {
    using vtbl: ^ID3D11GeometryShaderVtbl
}
ID3D11GeometryShaderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11GeometryShader, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11GeometryShader) -> ULONG,
    Release : proc(This: ^ID3D11GeometryShader) -> ULONG,
    GetDevice : proc(This: ^ID3D11GeometryShader, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11GeometryShader, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11GeometryShader, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11GeometryShader, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11PixelShader :: struct {
    using vtbl: ^ID3D11PixelShaderVtbl
}
ID3D11PixelShaderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11PixelShader, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11PixelShader) -> ULONG,
    Release : proc(This: ^ID3D11PixelShader) -> ULONG,
    GetDevice : proc(This: ^ID3D11PixelShader, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11PixelShader, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11PixelShader, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11PixelShader, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11ComputeShader :: struct {
    using vtbl: ^ID3D11ComputeShaderVtbl
}
ID3D11ComputeShaderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11ComputeShader, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11ComputeShader) -> ULONG,
    Release : proc(This: ^ID3D11ComputeShader) -> ULONG,
    GetDevice : proc(This: ^ID3D11ComputeShader, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11ComputeShader, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11ComputeShader, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11ComputeShader, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11InputLayout :: struct {
    using vtbl: ^ID3D11InputLayoutVtbl
}
ID3D11InputLayoutVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11InputLayout, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11InputLayout) -> ULONG,
    Release : proc(This: ^ID3D11InputLayout) -> ULONG,
    GetDevice : proc(This: ^ID3D11InputLayout, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11InputLayout, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11InputLayout, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11InputLayout, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
D3D11_SAMPLER_DESC :: struct {
    Filter: D3D11_FILTER,
    AddressU: D3D11_TEXTURE_ADDRESS_MODE,
    AddressV: D3D11_TEXTURE_ADDRESS_MODE,
    AddressW: D3D11_TEXTURE_ADDRESS_MODE,
    MipLODBias: FLOAT,
    MaxAnisotropy: UINT,
    ComparisonFunc: D3D11_COMPARISON_FUNC,
    BorderColor: [4]FLOAT,
    MinLOD: FLOAT,
    MaxLOD: FLOAT,
}
ID3D11SamplerState :: struct {
    using vtbl: ^ID3D11SamplerStateVtbl
}
ID3D11SamplerStateVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11SamplerState, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11SamplerState) -> ULONG,
    Release : proc(This: ^ID3D11SamplerState) -> ULONG,
    GetDevice : proc(This: ^ID3D11SamplerState, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11SamplerState, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11SamplerState, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11SamplerState, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11SamplerState, pDesc: ^D3D11_SAMPLER_DESC),
}
ID3D11Asynchronous :: struct {
    using vtbl: ^ID3D11AsynchronousVtbl
}
ID3D11AsynchronousVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Asynchronous, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Asynchronous) -> ULONG,
    Release : proc(This: ^ID3D11Asynchronous) -> ULONG,
    GetDevice : proc(This: ^ID3D11Asynchronous, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Asynchronous, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Asynchronous, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Asynchronous, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDataSize : proc(This: ^ID3D11Asynchronous) -> UINT,
}
D3D11_QUERY_DESC :: struct {
    Query: D3D11_QUERY,
    MiscFlags: UINT,
}
ID3D11Query :: struct {
    using vtbl: ^ID3D11QueryVtbl
}
ID3D11QueryVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Query, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Query) -> ULONG,
    Release : proc(This: ^ID3D11Query) -> ULONG,
    GetDevice : proc(This: ^ID3D11Query, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Query, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Query, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Query, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDataSize : proc(This: ^ID3D11Query) -> UINT,
    GetDesc : proc(This: ^ID3D11Query, pDesc: ^D3D11_QUERY_DESC),
}
ID3D11Predicate :: struct {
    using vtbl: ^ID3D11PredicateVtbl
}
ID3D11PredicateVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Predicate, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Predicate) -> ULONG,
    Release : proc(This: ^ID3D11Predicate) -> ULONG,
    GetDevice : proc(This: ^ID3D11Predicate, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Predicate, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Predicate, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Predicate, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDataSize : proc(This: ^ID3D11Predicate) -> UINT,
    GetDesc : proc(This: ^ID3D11Predicate, pDesc: ^D3D11_QUERY_DESC),
}
D3D11_QUERY_DATA_TIMESTAMP_DISJOINT :: struct {
    Frequency: UINT64,
    Disjoint: BOOL,
}
D3D11_QUERY_DATA_PIPELINE_STATISTICS :: struct {
    IAVertices: UINT64,
    IAPrimitives: UINT64,
    VSInvocations: UINT64,
    GSInvocations: UINT64,
    GSPrimitives: UINT64,
    CInvocations: UINT64,
    CPrimitives: UINT64,
    PSInvocations: UINT64,
    HSInvocations: UINT64,
    DSInvocations: UINT64,
    CSInvocations: UINT64,
}
D3D11_QUERY_DATA_SO_STATISTICS :: struct {
    NumPrimitivesWritten: UINT64,
    PrimitivesStorageNeeded: UINT64,
}
D3D11_COUNTER_DESC :: struct {
    Counter: D3D11_COUNTER,
    MiscFlags: UINT,
}
D3D11_COUNTER_INFO :: struct {
    LastDeviceDependentCounter: D3D11_COUNTER,
    NumSimultaneousCounters: UINT,
    NumDetectableParallelUnits: UINT8,
}
ID3D11Counter :: struct {
    using vtbl: ^ID3D11CounterVtbl
}
ID3D11CounterVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Counter, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Counter) -> ULONG,
    Release : proc(This: ^ID3D11Counter) -> ULONG,
    GetDevice : proc(This: ^ID3D11Counter, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Counter, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Counter, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Counter, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDataSize : proc(This: ^ID3D11Counter) -> UINT,
    GetDesc : proc(This: ^ID3D11Counter, pDesc: ^D3D11_COUNTER_DESC),
}
D3D11_CLASS_INSTANCE_DESC :: struct {
    InstanceId: UINT,
    InstanceIndex: UINT,
    TypeId: UINT,
    ConstantBuffer: UINT,
    BaseConstantBufferOffset: UINT,
    BaseTexture: UINT,
    BaseSampler: UINT,
    Created: BOOL,
}
ID3D11ClassInstance :: struct {
    using vtbl: ^ID3D11ClassInstanceVtbl
}
ID3D11ClassInstanceVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11ClassInstance, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11ClassInstance) -> ULONG,
    Release : proc(This: ^ID3D11ClassInstance) -> ULONG,
    GetDevice : proc(This: ^ID3D11ClassInstance, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11ClassInstance, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11ClassInstance, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11ClassInstance, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetClassLinkage : proc(This: ^ID3D11ClassInstance, ppLinkage: ^^ID3D11ClassLinkage),
    GetDesc : proc(This: ^ID3D11ClassInstance, pDesc: ^D3D11_CLASS_INSTANCE_DESC),
    GetInstanceName : proc(This: ^ID3D11ClassInstance, pInstanceName: LPSTR, pBufferLength: ^SIZE_T),
    GetTypeName : proc(This: ^ID3D11ClassInstance, pTypeName: LPSTR, pBufferLength: ^SIZE_T),
}
ID3D11ClassLinkage :: struct {
    using vtbl: ^ID3D11ClassLinkageVtbl
}
ID3D11ClassLinkageVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11ClassLinkage, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11ClassLinkage) -> ULONG,
    Release : proc(This: ^ID3D11ClassLinkage) -> ULONG,
    GetDevice : proc(This: ^ID3D11ClassLinkage, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11ClassLinkage, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11ClassLinkage, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11ClassLinkage, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetClassInstance : proc(This: ^ID3D11ClassLinkage, pClassInstanceName: LPCSTR, InstanceIndex: UINT, ppInstance: ^^ID3D11ClassInstance) -> HRESULT,
    CreateClassInstance : proc(This: ^ID3D11ClassLinkage, pClassTypeName: LPCSTR, ConstantBufferOffset: UINT, ConstantVectorOffset: UINT, TextureOffset: UINT, SamplerOffset: UINT, ppInstance: ^^ID3D11ClassInstance) -> HRESULT,
}
ID3D11CommandList :: struct {
    using vtbl: ^ID3D11CommandListVtbl
}
ID3D11CommandListVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11CommandList, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11CommandList) -> ULONG,
    Release : proc(This: ^ID3D11CommandList) -> ULONG,
    GetDevice : proc(This: ^ID3D11CommandList, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11CommandList, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11CommandList, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11CommandList, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetContextFlags : proc(This: ^ID3D11CommandList) -> UINT,
}
D3D11_FEATURE_DATA_THREADING :: struct {
    DriverConcurrentCreates: BOOL,
    DriverCommandLists: BOOL,
}
D3D11_FEATURE_DATA_DOUBLES :: struct {
    DoublePrecisionFloatShaderOps: BOOL,
}
D3D11_FEATURE_DATA_FORMAT_SUPPORT :: struct {
    InFormat: DXGI_FORMAT,
    OutFormatSupport: UINT,
}
D3D11_FEATURE_DATA_FORMAT_SUPPORT2 :: struct {
    InFormat: DXGI_FORMAT,
    OutFormatSupport2: UINT,
}
D3D11_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS :: struct {
    ComputeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x: BOOL,
}
D3D11_FEATURE_DATA_D3D11_OPTIONS :: struct {
    OutputMergerLogicOp: BOOL,
    UAVOnlyRenderingForcedSampleCount: BOOL,
    DiscardAPIsSeenByDriver: BOOL,
    FlagsForUpdateAndCopySeenByDriver: BOOL,
    ClearView: BOOL,
    CopyWithOverlap: BOOL,
    ConstantBufferPartialUpdate: BOOL,
    ConstantBufferOffsetting: BOOL,
    MapNoOverwriteOnDynamicConstantBuffer: BOOL,
    MapNoOverwriteOnDynamicBufferSRV: BOOL,
    MultisampleRTVWithForcedSampleCountOne: BOOL,
    SAD4ShaderInstructions: BOOL,
    ExtendedDoublesShaderInstructions: BOOL,
    ExtendedResourceSharing: BOOL,
}
D3D11_FEATURE_DATA_ARCHITECTURE_INFO :: struct {
    TileBasedDeferredRenderer: BOOL,
}
D3D11_FEATURE_DATA_D3D9_OPTIONS :: struct {
    FullNonPow2TextureSupport: BOOL,
}
D3D11_FEATURE_DATA_D3D9_SHADOW_SUPPORT :: struct {
    SupportsDepthAsTextureWithLessEqualComparisonFilter: BOOL,
}
D3D11_FEATURE_DATA_SHADER_MIN_PRECISION_SUPPORT :: struct {
    PixelShaderMinPrecision: UINT,
    AllOtherShaderStagesMinPrecision: UINT,
}
D3D11_FEATURE_DATA_D3D11_OPTIONS1 :: struct {
    TiledResourcesTier: D3D11_TILED_RESOURCES_TIER,
    MinMaxFiltering: BOOL,
    ClearViewAlsoSupportsDepthOnlyFormats: BOOL,
    MapOnDefaultBuffers: BOOL,
}
D3D11_FEATURE_DATA_D3D9_SIMPLE_INSTANCING_SUPPORT :: struct {
    SimpleInstancingSupported: BOOL,
}
D3D11_FEATURE_DATA_MARKER_SUPPORT :: struct {
    Profile: BOOL,
}
D3D11_FEATURE_DATA_D3D9_OPTIONS1 :: struct {
    FullNonPow2TextureSupported: BOOL,
    DepthAsTextureWithLessEqualComparisonFilterSupported: BOOL,
    SimpleInstancingSupported: BOOL,
    TextureCubeFaceRenderTargetWithNonCubeDepthStencilSupported: BOOL,
}
D3D11_FEATURE_DATA_D3D11_OPTIONS2 :: struct {
    PSSpecifiedStencilRefSupported: BOOL,
    TypedUAVLoadAdditionalFormats: BOOL,
    ROVsSupported: BOOL,
    ConservativeRasterizationTier: D3D11_CONSERVATIVE_RASTERIZATION_TIER,
    TiledResourcesTier: D3D11_TILED_RESOURCES_TIER,
    MapOnDefaultTextures: BOOL,
    StandardSwizzle: BOOL,
    UnifiedMemoryArchitecture: BOOL,
}
D3D11_FEATURE_DATA_D3D11_OPTIONS3 :: struct {
    VPAndRTArrayIndexFromAnyShaderFeedingRasterizer: BOOL,
}
D3D11_FEATURE_DATA_GPU_VIRTUAL_ADDRESS_SUPPORT :: struct {
    MaxGPUVirtualAddressBitsPerResource: UINT,
    MaxGPUVirtualAddressBitsPerProcess: UINT,
}
D3D11_FEATURE_DATA_SHADER_CACHE :: struct {
    SupportFlags: UINT,
}
D3D11_FEATURE_DATA_D3D11_OPTIONS5 :: struct {
    SharedResourceTier: D3D11_SHARED_RESOURCE_TIER,
}
ID3D11DeviceContext :: struct {
    using vtbl: ^ID3D11DeviceContextVtbl
}
ID3D11DeviceContextVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DeviceContext, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DeviceContext) -> ULONG,
    Release : proc(This: ^ID3D11DeviceContext) -> ULONG,
    GetDevice : proc(This: ^ID3D11DeviceContext, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DeviceContext, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DeviceContext, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DeviceContext, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    VSSetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSSetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSSetShader : proc(This: ^ID3D11DeviceContext, pPixelShader: ^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    PSSetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSSetShader : proc(This: ^ID3D11DeviceContext, pVertexShader: ^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DrawIndexed : proc(This: ^ID3D11DeviceContext, IndexCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT),
    Draw : proc(This: ^ID3D11DeviceContext, VertexCount: UINT, StartVertexLocation: UINT),
    Map : proc(This: ^ID3D11DeviceContext, pResource: ^ID3D11Resource, Subresource: UINT, MapType: D3D11_MAP, MapFlags: UINT, pMappedResource: ^D3D11_MAPPED_SUBRESOURCE) -> HRESULT,
    Unmap : proc(This: ^ID3D11DeviceContext, pResource: ^ID3D11Resource, Subresource: UINT),
    PSSetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IASetInputLayout : proc(This: ^ID3D11DeviceContext, pInputLayout: ^ID3D11InputLayout),
    IASetVertexBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IASetIndexBuffer : proc(This: ^ID3D11DeviceContext, pIndexBuffer: ^ID3D11Buffer, Format: DXGI_FORMAT, Offset: UINT),
    DrawIndexedInstanced : proc(This: ^ID3D11DeviceContext, IndexCountPerInstance: UINT, InstanceCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT, StartInstanceLocation: UINT),
    DrawInstanced : proc(This: ^ID3D11DeviceContext, VertexCountPerInstance: UINT, InstanceCount: UINT, StartVertexLocation: UINT, StartInstanceLocation: UINT),
    GSSetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSSetShader : proc(This: ^ID3D11DeviceContext, pShader: ^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    IASetPrimitiveTopology : proc(This: ^ID3D11DeviceContext, Topology: D3D11_PRIMITIVE_TOPOLOGY),
    VSSetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSSetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    Begin : proc(This: ^ID3D11DeviceContext, pAsync: ^ID3D11Asynchronous),
    End : proc(This: ^ID3D11DeviceContext, pAsync: ^ID3D11Asynchronous),
    GetData : proc(This: ^ID3D11DeviceContext, pAsync: ^ID3D11Asynchronous, pData: rawptr, DataSize: UINT, GetDataFlags: UINT) -> HRESULT,
    SetPredication : proc(This: ^ID3D11DeviceContext, pPredicate: ^ID3D11Predicate, PredicateValue: BOOL),
    GSSetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSSetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMSetRenderTargets : proc(This: ^ID3D11DeviceContext, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView),
    OMSetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    OMSetBlendState : proc(This: ^ID3D11DeviceContext, pBlendState: ^ID3D11BlendState, BlendFactor: [4]FLOAT, SampleMask: UINT),
    OMSetDepthStencilState : proc(This: ^ID3D11DeviceContext, pDepthStencilState: ^ID3D11DepthStencilState, StencilRef: UINT),
    SOSetTargets : proc(This: ^ID3D11DeviceContext, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer, pOffsets: ^UINT),
    DrawAuto : proc(This: ^ID3D11DeviceContext),
    DrawIndexedInstancedIndirect : proc(This: ^ID3D11DeviceContext, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    DrawInstancedIndirect : proc(This: ^ID3D11DeviceContext, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    Dispatch : proc(This: ^ID3D11DeviceContext, ThreadGroupCountX: UINT, ThreadGroupCountY: UINT, ThreadGroupCountZ: UINT),
    DispatchIndirect : proc(This: ^ID3D11DeviceContext, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    RSSetState : proc(This: ^ID3D11DeviceContext, pRasterizerState: ^ID3D11RasterizerState),
    RSSetViewports : proc(This: ^ID3D11DeviceContext, NumViewports: UINT, pViewports: ^D3D11_VIEWPORT),
    RSSetScissorRects : proc(This: ^ID3D11DeviceContext, NumRects: UINT, pRects: ^D3D11_RECT),
    CopySubresourceRegion : proc(This: ^ID3D11DeviceContext, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX),
    CopyResource : proc(This: ^ID3D11DeviceContext, pDstResource: ^ID3D11Resource, pSrcResource: ^ID3D11Resource),
    UpdateSubresource : proc(This: ^ID3D11DeviceContext, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT),
    CopyStructureCount : proc(This: ^ID3D11DeviceContext, pDstBuffer: ^ID3D11Buffer, DstAlignedByteOffset: UINT, pSrcView: ^ID3D11UnorderedAccessView),
    ClearRenderTargetView : proc(This: ^ID3D11DeviceContext, pRenderTargetView: ^ID3D11RenderTargetView, ColorRGBA: [4]FLOAT),
    ClearUnorderedAccessViewUint : proc(This: ^ID3D11DeviceContext, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]UINT),
    ClearUnorderedAccessViewFloat : proc(This: ^ID3D11DeviceContext, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]FLOAT),
    ClearDepthStencilView : proc(This: ^ID3D11DeviceContext, pDepthStencilView: ^ID3D11DepthStencilView, ClearFlags: UINT, Depth: FLOAT, Stencil: UINT8),
    GenerateMips : proc(This: ^ID3D11DeviceContext, pShaderResourceView: ^ID3D11ShaderResourceView),
    SetResourceMinLOD : proc(This: ^ID3D11DeviceContext, pResource: ^ID3D11Resource, MinLOD: FLOAT),
    GetResourceMinLOD : proc(This: ^ID3D11DeviceContext, pResource: ^ID3D11Resource) -> FLOAT,
    ResolveSubresource : proc(This: ^ID3D11DeviceContext, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, Format: DXGI_FORMAT),
    ExecuteCommandList : proc(This: ^ID3D11DeviceContext, pCommandList: ^ID3D11CommandList, RestoreContextState: BOOL),
    HSSetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSSetShader : proc(This: ^ID3D11DeviceContext, pHullShader: ^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    HSSetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSSetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSSetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSSetShader : proc(This: ^ID3D11DeviceContext, pDomainShader: ^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DSSetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSSetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSSetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSSetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    CSSetShader : proc(This: ^ID3D11DeviceContext, pComputeShader: ^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    CSSetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSSetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    VSGetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSGetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSGetShader : proc(This: ^ID3D11DeviceContext, ppPixelShader: ^^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSGetShader : proc(This: ^ID3D11DeviceContext, ppVertexShader: ^^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IAGetInputLayout : proc(This: ^ID3D11DeviceContext, ppInputLayout: ^^ID3D11InputLayout),
    IAGetVertexBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IAGetIndexBuffer : proc(This: ^ID3D11DeviceContext, pIndexBuffer: ^^ID3D11Buffer, Format: ^DXGI_FORMAT, Offset: ^UINT),
    GSGetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSGetShader : proc(This: ^ID3D11DeviceContext, ppGeometryShader: ^^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    IAGetPrimitiveTopology : proc(This: ^ID3D11DeviceContext, pTopology: ^D3D11_PRIMITIVE_TOPOLOGY),
    VSGetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSGetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    GetPredication : proc(This: ^ID3D11DeviceContext, ppPredicate: ^^ID3D11Predicate, pPredicateValue: ^BOOL),
    GSGetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSGetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMGetRenderTargets : proc(This: ^ID3D11DeviceContext, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView),
    OMGetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    OMGetBlendState : proc(This: ^ID3D11DeviceContext, ppBlendState: ^^ID3D11BlendState, BlendFactor: [4]FLOAT, pSampleMask: ^UINT),
    OMGetDepthStencilState : proc(This: ^ID3D11DeviceContext, ppDepthStencilState: ^^ID3D11DepthStencilState, pStencilRef: ^UINT),
    SOGetTargets : proc(This: ^ID3D11DeviceContext, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer),
    RSGetState : proc(This: ^ID3D11DeviceContext, ppRasterizerState: ^^ID3D11RasterizerState),
    RSGetViewports : proc(This: ^ID3D11DeviceContext, pNumViewports: ^UINT, pViewports: ^D3D11_VIEWPORT),
    RSGetScissorRects : proc(This: ^ID3D11DeviceContext, pNumRects: ^UINT, pRects: ^D3D11_RECT),
    HSGetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSGetShader : proc(This: ^ID3D11DeviceContext, ppHullShader: ^^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    HSGetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSGetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSGetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSGetShader : proc(This: ^ID3D11DeviceContext, ppDomainShader: ^^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    DSGetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSGetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSGetShaderResources : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSGetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    CSGetShader : proc(This: ^ID3D11DeviceContext, ppComputeShader: ^^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    CSGetSamplers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSGetConstantBuffers : proc(This: ^ID3D11DeviceContext, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    ClearState : proc(This: ^ID3D11DeviceContext),
    Flush : proc(This: ^ID3D11DeviceContext),
    GetType : proc(This: ^ID3D11DeviceContext) -> D3D11_DEVICE_CONTEXT_TYPE,
    GetContextFlags : proc(This: ^ID3D11DeviceContext) -> UINT,
    FinishCommandList : proc(This: ^ID3D11DeviceContext, RestoreDeferredContextState: BOOL, ppCommandList: ^^ID3D11CommandList) -> HRESULT,
}
D3D11_VIDEO_DECODER_DESC :: struct {
    Guid: GUID,
    SampleWidth: UINT,
    SampleHeight: UINT,
    OutputFormat: DXGI_FORMAT,
}
D3D11_VIDEO_DECODER_CONFIG :: struct {
    guidConfigBitstreamEncryption: GUID,
    guidConfigMBcontrolEncryption: GUID,
    guidConfigResidDiffEncryption: GUID,
    ConfigBitstreamRaw: UINT,
    ConfigMBcontrolRasterOrder: UINT,
    ConfigResidDiffHost: UINT,
    ConfigSpatialResid8: UINT,
    ConfigResid8Subtraction: UINT,
    ConfigSpatialHost8or9Clipping: UINT,
    ConfigSpatialResidInterleaved: UINT,
    ConfigIntraResidUnsigned: UINT,
    ConfigResidDiffAccelerator: UINT,
    ConfigHostInverseScan: UINT,
    ConfigSpecificIDCT: UINT,
    Config4GroupedCoefs: UINT,
    ConfigMinRenderTargetBuffCount: USHORT,
    ConfigDecoderSpecific: USHORT,
}
_D3D11_AES_CTR_IV :: struct {
    IV: UINT64,
    Count: UINT64,
}
D3D11_ENCRYPTED_BLOCK_INFO :: struct {
    NumEncryptedBytesAtBeginning: UINT,
    NumBytesInSkipPattern: UINT,
    NumBytesInEncryptPattern: UINT,
}
D3D11_VIDEO_DECODER_BUFFER_DESC :: struct {
    BufferType: D3D11_VIDEO_DECODER_BUFFER_TYPE,
    BufferIndex: UINT,
    DataOffset: UINT,
    DataSize: UINT,
    FirstMBaddress: UINT,
    NumMBsInBuffer: UINT,
    Width: UINT,
    Height: UINT,
    Stride: UINT,
    ReservedBits: UINT,
    pIV: rawptr,
    IVSize: UINT,
    PartialEncryption: BOOL,
    EncryptedBlockInfo: D3D11_ENCRYPTED_BLOCK_INFO,
}
D3D11_VIDEO_DECODER_EXTENSION :: struct {
    Function: UINT,
    pPrivateInputData: rawptr,
    PrivateInputDataSize: UINT,
    pPrivateOutputData: rawptr,
    PrivateOutputDataSize: UINT,
    ResourceCount: UINT,
    ppResourceList: ^^ID3D11Resource,
}
ID3D11VideoDecoder :: struct {
    using vtbl: ^ID3D11VideoDecoderVtbl
}
ID3D11VideoDecoderVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoDecoder, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoDecoder) -> ULONG,
    Release : proc(This: ^ID3D11VideoDecoder) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoDecoder, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoDecoder, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoDecoder, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoDecoder, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetCreationParameters : proc(This: ^ID3D11VideoDecoder, pVideoDesc: ^D3D11_VIDEO_DECODER_DESC, pConfig: ^D3D11_VIDEO_DECODER_CONFIG) -> HRESULT,
    GetDriverHandle : proc(This: ^ID3D11VideoDecoder, pDriverHandle: ^HANDLE) -> HRESULT,
}
D3D11_VIDEO_PROCESSOR_CAPS :: struct {
    DeviceCaps: UINT,
    FeatureCaps: UINT,
    FilterCaps: UINT,
    InputFormatCaps: UINT,
    AutoStreamCaps: UINT,
    StereoCaps: UINT,
    RateConversionCapsCount: UINT,
    MaxInputStreams: UINT,
    MaxStreamStates: UINT,
}
D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS :: struct {
    PastFrames: UINT,
    FutureFrames: UINT,
    ProcessorCaps: UINT,
    ITelecineCaps: UINT,
    CustomRateCount: UINT,
}
D3D11_VIDEO_CONTENT_PROTECTION_CAPS :: struct {
    Caps: UINT,
    KeyExchangeTypeCount: UINT,
    BlockAlignmentSize: UINT,
    ProtectedMemorySize: ULONGLONG,
}
D3D11_VIDEO_PROCESSOR_CUSTOM_RATE :: struct {
    CustomRate: DXGI_RATIONAL,
    OutputFrames: UINT,
    InputInterlaced: BOOL,
    InputFramesOrFields: UINT,
}
D3D11_VIDEO_PROCESSOR_FILTER_RANGE :: struct {
    Minimum: int,
    Maximum: int,
    Default: int,
    Multiplier: float,
}
D3D11_VIDEO_PROCESSOR_CONTENT_DESC :: struct {
    InputFrameFormat: D3D11_VIDEO_FRAME_FORMAT,
    InputFrameRate: DXGI_RATIONAL,
    InputWidth: UINT,
    InputHeight: UINT,
    OutputFrameRate: DXGI_RATIONAL,
    OutputWidth: UINT,
    OutputHeight: UINT,
    Usage: D3D11_VIDEO_USAGE,
}
ID3D11VideoProcessorEnumerator :: struct {
    using vtbl: ^ID3D11VideoProcessorEnumeratorVtbl
}
ID3D11VideoProcessorEnumeratorVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoProcessorEnumerator, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoProcessorEnumerator) -> ULONG,
    Release : proc(This: ^ID3D11VideoProcessorEnumerator) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoProcessorEnumerator, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoProcessorEnumerator, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoProcessorEnumerator, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoProcessorEnumerator, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetVideoProcessorContentDesc : proc(This: ^ID3D11VideoProcessorEnumerator, pContentDesc: ^D3D11_VIDEO_PROCESSOR_CONTENT_DESC) -> HRESULT,
    CheckVideoProcessorFormat : proc(This: ^ID3D11VideoProcessorEnumerator, Format: DXGI_FORMAT, pFlags: ^UINT) -> HRESULT,
    GetVideoProcessorCaps : proc(This: ^ID3D11VideoProcessorEnumerator, pCaps: ^D3D11_VIDEO_PROCESSOR_CAPS) -> HRESULT,
    GetVideoProcessorRateConversionCaps : proc(This: ^ID3D11VideoProcessorEnumerator, TypeIndex: UINT, pCaps: ^D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS) -> HRESULT,
    GetVideoProcessorCustomRate : proc(This: ^ID3D11VideoProcessorEnumerator, TypeIndex: UINT, CustomRateIndex: UINT, pRate: ^D3D11_VIDEO_PROCESSOR_CUSTOM_RATE) -> HRESULT,
    GetVideoProcessorFilterRange : proc(This: ^ID3D11VideoProcessorEnumerator, Filter: D3D11_VIDEO_PROCESSOR_FILTER, pRange: ^D3D11_VIDEO_PROCESSOR_FILTER_RANGE) -> HRESULT,
}
D3D11_VIDEO_COLOR_RGBA :: struct {
    R: float,
    G: float,
    B: float,
    A: float,
}
D3D11_VIDEO_COLOR_YCbCrA :: struct {
    Y: float,
    Cb: float,
    Cr: float,
    A: float,
}
D3D11_VIDEO_COLOR :: struct {
    _0: union {
        D3D11_VIDEO_COLOR_YCbCrA, //YCbCr
        D3D11_VIDEO_COLOR_RGBA, //RGBA
    },
}
D3D11_VIDEO_PROCESSOR_COLOR_SPACE :: struct {
    Usage: UINT,
    RGB_Range: UINT,
    YCbCr_Matrix: UINT,
    YCbCr_xvYCC: UINT,
    Nominal_Range: UINT,
    Reserved: UINT,
}
D3D11_VIDEO_PROCESSOR_STREAM :: struct {
    Enable: BOOL,
    OutputIndex: UINT,
    InputFrameOrField: UINT,
    PastFrames: UINT,
    FutureFrames: UINT,
    ppPastSurfaces: ^^ID3D11VideoProcessorInputView,
    pInputSurface: ^ID3D11VideoProcessorInputView,
    ppFutureSurfaces: ^^ID3D11VideoProcessorInputView,
    ppPastSurfacesRight: ^^ID3D11VideoProcessorInputView,
    pInputSurfaceRight: ^ID3D11VideoProcessorInputView,
    ppFutureSurfacesRight: ^^ID3D11VideoProcessorInputView,
}
ID3D11VideoProcessor :: struct {
    using vtbl: ^ID3D11VideoProcessorVtbl
}
ID3D11VideoProcessorVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoProcessor, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoProcessor) -> ULONG,
    Release : proc(This: ^ID3D11VideoProcessor) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoProcessor, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoProcessor, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoProcessor, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoProcessor, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetContentDesc : proc(This: ^ID3D11VideoProcessor, pDesc: ^D3D11_VIDEO_PROCESSOR_CONTENT_DESC),
    GetRateConversionCaps : proc(This: ^ID3D11VideoProcessor, pCaps: ^D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS),
}
D3D11_OMAC :: struct {
    Omac: [16]BYTE,
}
ID3D11AuthenticatedChannel :: struct {
    using vtbl: ^ID3D11AuthenticatedChannelVtbl
}
ID3D11AuthenticatedChannelVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11AuthenticatedChannel, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11AuthenticatedChannel) -> ULONG,
    Release : proc(This: ^ID3D11AuthenticatedChannel) -> ULONG,
    GetDevice : proc(This: ^ID3D11AuthenticatedChannel, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11AuthenticatedChannel, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11AuthenticatedChannel, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11AuthenticatedChannel, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetCertificateSize : proc(This: ^ID3D11AuthenticatedChannel, pCertificateSize: ^UINT) -> HRESULT,
    GetCertificate : proc(This: ^ID3D11AuthenticatedChannel, CertificateSize: UINT, pCertificate: ^BYTE) -> HRESULT,
    GetChannelHandle : proc(This: ^ID3D11AuthenticatedChannel, pChannelHandle: ^HANDLE),
}
D3D11_AUTHENTICATED_QUERY_INPUT :: struct {
    QueryType: GUID,
    hChannel: HANDLE,
    SequenceNumber: UINT,
}
D3D11_AUTHENTICATED_QUERY_OUTPUT :: struct {
    omac: D3D11_OMAC,
    QueryType: GUID,
    hChannel: HANDLE,
    SequenceNumber: UINT,
    ReturnCode: HRESULT,
}
D3D11_AUTHENTICATED_QUERY_PROTECTION_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    ProtectionFlags: D3D11_AUTHENTICATED_PROTECTION_FLAGS,
}
D3D11_AUTHENTICATED_QUERY_CHANNEL_TYPE_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    ChannelType: D3D11_AUTHENTICATED_CHANNEL_TYPE,
}
D3D11_AUTHENTICATED_QUERY_DEVICE_HANDLE_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    DeviceHandle: HANDLE,
}
D3D11_AUTHENTICATED_QUERY_CRYPTO_SESSION_INPUT :: struct {
    Input: D3D11_AUTHENTICATED_QUERY_INPUT,
    DecoderHandle: HANDLE,
}
D3D11_AUTHENTICATED_QUERY_CRYPTO_SESSION_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    DecoderHandle: HANDLE,
    CryptoSessionHandle: HANDLE,
    DeviceHandle: HANDLE,
}
D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_COUNT_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    RestrictedSharedResourceProcessCount: UINT,
}
D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_INPUT :: struct {
    Input: D3D11_AUTHENTICATED_QUERY_INPUT,
    ProcessIndex: UINT,
}
D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    ProcessIndex: UINT,
    ProcessIdentifier: D3D11_AUTHENTICATED_PROCESS_IDENTIFIER_TYPE,
    ProcessHandle: HANDLE,
}
D3D11_AUTHENTICATED_QUERY_UNRESTRICTED_PROTECTED_SHARED_RESOURCE_COUNT_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    UnrestrictedProtectedSharedResourceCount: UINT,
}
D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_COUNT_INPUT :: struct {
    Input: D3D11_AUTHENTICATED_QUERY_INPUT,
    DeviceHandle: HANDLE,
    CryptoSessionHandle: HANDLE,
}
D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_COUNT_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    DeviceHandle: HANDLE,
    CryptoSessionHandle: HANDLE,
    OutputIDCount: UINT,
}
D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_INPUT :: struct {
    Input: D3D11_AUTHENTICATED_QUERY_INPUT,
    DeviceHandle: HANDLE,
    CryptoSessionHandle: HANDLE,
    OutputIDIndex: UINT,
}
D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    DeviceHandle: HANDLE,
    CryptoSessionHandle: HANDLE,
    OutputIDIndex: UINT,
    OutputID: UINT64,
}
D3D11_AUTHENTICATED_QUERY_ACESSIBILITY_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    BusType: D3D11_BUS_TYPE,
    AccessibleInContiguousBlocks: BOOL,
    AccessibleInNonContiguousBlocks: BOOL,
}
D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ENCRYPTION_GUID_COUNT_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    EncryptionGuidCount: UINT,
}
D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ENCRYPTION_GUID_INPUT :: struct {
    Input: D3D11_AUTHENTICATED_QUERY_INPUT,
    EncryptionGuidIndex: UINT,
}
D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ENCRYPTION_GUID_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    EncryptionGuidIndex: UINT,
    EncryptionGuid: GUID,
}
D3D11_AUTHENTICATED_QUERY_CURRENT_ACCESSIBILITY_ENCRYPTION_OUTPUT :: struct {
    Output: D3D11_AUTHENTICATED_QUERY_OUTPUT,
    EncryptionGuid: GUID,
}
D3D11_AUTHENTICATED_CONFIGURE_INPUT :: struct {
    omac: D3D11_OMAC,
    ConfigureType: GUID,
    hChannel: HANDLE,
    SequenceNumber: UINT,
}
D3D11_AUTHENTICATED_CONFIGURE_OUTPUT :: struct {
    omac: D3D11_OMAC,
    ConfigureType: GUID,
    hChannel: HANDLE,
    SequenceNumber: UINT,
    ReturnCode: HRESULT,
}
D3D11_AUTHENTICATED_CONFIGURE_INITIALIZE_INPUT :: struct {
    Parameters: D3D11_AUTHENTICATED_CONFIGURE_INPUT,
    StartSequenceQuery: UINT,
    StartSequenceConfigure: UINT,
}
D3D11_AUTHENTICATED_CONFIGURE_PROTECTION_INPUT :: struct {
    Parameters: D3D11_AUTHENTICATED_CONFIGURE_INPUT,
    Protections: D3D11_AUTHENTICATED_PROTECTION_FLAGS,
}
D3D11_AUTHENTICATED_CONFIGURE_CRYPTO_SESSION_INPUT :: struct {
    Parameters: D3D11_AUTHENTICATED_CONFIGURE_INPUT,
    DecoderHandle: HANDLE,
    CryptoSessionHandle: HANDLE,
    DeviceHandle: HANDLE,
}
D3D11_AUTHENTICATED_CONFIGURE_SHARED_RESOURCE_INPUT :: struct {
    Parameters: D3D11_AUTHENTICATED_CONFIGURE_INPUT,
    ProcessType: D3D11_AUTHENTICATED_PROCESS_IDENTIFIER_TYPE,
    ProcessHandle: HANDLE,
    AllowAccess: BOOL,
}
D3D11_AUTHENTICATED_CONFIGURE_ACCESSIBLE_ENCRYPTION_INPUT :: struct {
    Parameters: D3D11_AUTHENTICATED_CONFIGURE_INPUT,
    EncryptionGuid: GUID,
}
ID3D11CryptoSession :: struct {
    using vtbl: ^ID3D11CryptoSessionVtbl
}
ID3D11CryptoSessionVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11CryptoSession, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11CryptoSession) -> ULONG,
    Release : proc(This: ^ID3D11CryptoSession) -> ULONG,
    GetDevice : proc(This: ^ID3D11CryptoSession, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11CryptoSession, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11CryptoSession, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11CryptoSession, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetCryptoType : proc(This: ^ID3D11CryptoSession, pCryptoType: ^GUID),
    GetDecoderProfile : proc(This: ^ID3D11CryptoSession, pDecoderProfile: ^GUID),
    GetCertificateSize : proc(This: ^ID3D11CryptoSession, pCertificateSize: ^UINT) -> HRESULT,
    GetCertificate : proc(This: ^ID3D11CryptoSession, CertificateSize: UINT, pCertificate: ^BYTE) -> HRESULT,
    GetCryptoSessionHandle : proc(This: ^ID3D11CryptoSession, pCryptoSessionHandle: ^HANDLE),
}
D3D11_TEX2D_VDOV :: struct {
    ArraySlice: UINT,
}
D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC :: struct {
    DecodeProfile: GUID,
    ViewDimension: D3D11_VDOV_DIMENSION,
    _2: union {
        D3D11_TEX2D_VDOV, //Texture2D
    },
}
ID3D11VideoDecoderOutputView :: struct {
    using vtbl: ^ID3D11VideoDecoderOutputViewVtbl
}
ID3D11VideoDecoderOutputViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoDecoderOutputView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoDecoderOutputView) -> ULONG,
    Release : proc(This: ^ID3D11VideoDecoderOutputView) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoDecoderOutputView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoDecoderOutputView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoDecoderOutputView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoDecoderOutputView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11VideoDecoderOutputView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11VideoDecoderOutputView, pDesc: ^D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC),
}
D3D11_TEX2D_VPIV :: struct {
    MipSlice: UINT,
    ArraySlice: UINT,
}
D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC :: struct {
    FourCC: UINT,
    ViewDimension: D3D11_VPIV_DIMENSION,
    _2: union {
        D3D11_TEX2D_VPIV, //Texture2D
    },
}
ID3D11VideoProcessorInputView :: struct {
    using vtbl: ^ID3D11VideoProcessorInputViewVtbl
}
ID3D11VideoProcessorInputViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoProcessorInputView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoProcessorInputView) -> ULONG,
    Release : proc(This: ^ID3D11VideoProcessorInputView) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoProcessorInputView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoProcessorInputView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoProcessorInputView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoProcessorInputView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11VideoProcessorInputView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11VideoProcessorInputView, pDesc: ^D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC),
}
D3D11_TEX2D_VPOV :: struct {
    MipSlice: UINT,
}
D3D11_TEX2D_ARRAY_VPOV :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
}
D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC :: struct {
    ViewDimension: D3D11_VPOV_DIMENSION,
    _1: union {
        D3D11_TEX2D_VPOV, //Texture2D
        D3D11_TEX2D_ARRAY_VPOV, //Texture2DArray
    },
}
ID3D11VideoProcessorOutputView :: struct {
    using vtbl: ^ID3D11VideoProcessorOutputViewVtbl
}
ID3D11VideoProcessorOutputViewVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoProcessorOutputView, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoProcessorOutputView) -> ULONG,
    Release : proc(This: ^ID3D11VideoProcessorOutputView) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoProcessorOutputView, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoProcessorOutputView, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoProcessorOutputView, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoProcessorOutputView, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11VideoProcessorOutputView, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11VideoProcessorOutputView, pDesc: ^D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC),
}
ID3D11VideoContext :: struct {
    using vtbl: ^ID3D11VideoContextVtbl
}
ID3D11VideoContextVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoContext, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoContext) -> ULONG,
    Release : proc(This: ^ID3D11VideoContext) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoContext, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoContext, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoContext, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoContext, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDecoderBuffer : proc(This: ^ID3D11VideoContext, pDecoder: ^ID3D11VideoDecoder, Type: D3D11_VIDEO_DECODER_BUFFER_TYPE, pBufferSize: ^UINT, ppBuffer: ^rawptr) -> HRESULT,
    ReleaseDecoderBuffer : proc(This: ^ID3D11VideoContext, pDecoder: ^ID3D11VideoDecoder, Type: D3D11_VIDEO_DECODER_BUFFER_TYPE) -> HRESULT,
    DecoderBeginFrame : proc(This: ^ID3D11VideoContext, pDecoder: ^ID3D11VideoDecoder, pView: ^ID3D11VideoDecoderOutputView, ContentKeySize: UINT, pContentKey: rawptr) -> HRESULT,
    DecoderEndFrame : proc(This: ^ID3D11VideoContext, pDecoder: ^ID3D11VideoDecoder) -> HRESULT,
    SubmitDecoderBuffers : proc(This: ^ID3D11VideoContext, pDecoder: ^ID3D11VideoDecoder, NumBuffers: UINT, pBufferDesc: ^D3D11_VIDEO_DECODER_BUFFER_DESC) -> HRESULT,
    DecoderExtension : proc(This: ^ID3D11VideoContext, pDecoder: ^ID3D11VideoDecoder, pExtensionData: ^D3D11_VIDEO_DECODER_EXTENSION) -> APP_DEPRECATED_HRESULT,
    VideoProcessorSetOutputTargetRect : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, Enable: BOOL, pRect: ^RECT),
    VideoProcessorSetOutputBackgroundColor : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, YCbCr: BOOL, pColor: ^D3D11_VIDEO_COLOR),
    VideoProcessorSetOutputColorSpace : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorSetOutputAlphaFillMode : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, AlphaFillMode: D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE, StreamIndex: UINT),
    VideoProcessorSetOutputConstriction : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, Enable: BOOL, Size: SIZE),
    VideoProcessorSetOutputStereoMode : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, Enable: BOOL),
    VideoProcessorSetOutputExtension : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorGetOutputTargetRect : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, Enabled: ^BOOL, pRect: ^RECT),
    VideoProcessorGetOutputBackgroundColor : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pYCbCr: ^BOOL, pColor: ^D3D11_VIDEO_COLOR),
    VideoProcessorGetOutputColorSpace : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorGetOutputAlphaFillMode : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pAlphaFillMode: ^D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE, pStreamIndex: ^UINT),
    VideoProcessorGetOutputConstriction : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pEnabled: ^BOOL, pSize: ^SIZE),
    VideoProcessorGetOutputStereoMode : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pEnabled: ^BOOL),
    VideoProcessorGetOutputExtension : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorSetStreamFrameFormat : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, FrameFormat: D3D11_VIDEO_FRAME_FORMAT),
    VideoProcessorSetStreamColorSpace : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorSetStreamOutputRate : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, OutputRate: D3D11_VIDEO_PROCESSOR_OUTPUT_RATE, RepeatFrame: BOOL, pCustomRate: ^DXGI_RATIONAL),
    VideoProcessorSetStreamSourceRect : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, pRect: ^RECT),
    VideoProcessorSetStreamDestRect : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, pRect: ^RECT),
    VideoProcessorSetStreamAlpha : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Alpha: FLOAT),
    VideoProcessorSetStreamPalette : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Count: UINT, pEntries: ^UINT),
    VideoProcessorSetStreamPixelAspectRatio : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, pSourceAspectRatio: ^DXGI_RATIONAL, pDestinationAspectRatio: ^DXGI_RATIONAL),
    VideoProcessorSetStreamLumaKey : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Lower: FLOAT, Upper: FLOAT),
    VideoProcessorSetStreamStereoFormat : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Format: D3D11_VIDEO_PROCESSOR_STEREO_FORMAT, LeftViewFrame0: BOOL, BaseViewFrame0: BOOL, FlipMode: D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE, MonoOffset: int),
    VideoProcessorSetStreamAutoProcessingMode : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL),
    VideoProcessorSetStreamFilter : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Filter: D3D11_VIDEO_PROCESSOR_FILTER, Enable: BOOL, Level: int),
    VideoProcessorSetStreamExtension : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorGetStreamFrameFormat : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pFrameFormat: ^D3D11_VIDEO_FRAME_FORMAT),
    VideoProcessorGetStreamColorSpace : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorGetStreamOutputRate : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pOutputRate: ^D3D11_VIDEO_PROCESSOR_OUTPUT_RATE, pRepeatFrame: ^BOOL, pCustomRate: ^DXGI_RATIONAL),
    VideoProcessorGetStreamSourceRect : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pRect: ^RECT),
    VideoProcessorGetStreamDestRect : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pRect: ^RECT),
    VideoProcessorGetStreamAlpha : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pAlpha: ^FLOAT),
    VideoProcessorGetStreamPalette : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Count: UINT, pEntries: ^UINT),
    VideoProcessorGetStreamPixelAspectRatio : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pSourceAspectRatio: ^DXGI_RATIONAL, pDestinationAspectRatio: ^DXGI_RATIONAL),
    VideoProcessorGetStreamLumaKey : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pLower: ^FLOAT, pUpper: ^FLOAT),
    VideoProcessorGetStreamStereoFormat : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnable: ^BOOL, pFormat: ^D3D11_VIDEO_PROCESSOR_STEREO_FORMAT, pLeftViewFrame0: ^BOOL, pBaseViewFrame0: ^BOOL, pFlipMode: ^D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE, MonoOffset: ^int),
    VideoProcessorGetStreamAutoProcessingMode : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL),
    VideoProcessorGetStreamFilter : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Filter: D3D11_VIDEO_PROCESSOR_FILTER, pEnabled: ^BOOL, pLevel: ^int),
    VideoProcessorGetStreamExtension : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorBlt : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, pView: ^ID3D11VideoProcessorOutputView, OutputFrame: UINT, StreamCount: UINT, pStreams: ^D3D11_VIDEO_PROCESSOR_STREAM) -> HRESULT,
    NegotiateCryptoSessionKeyExchange : proc(This: ^ID3D11VideoContext, pCryptoSession: ^ID3D11CryptoSession, DataSize: UINT, pData: rawptr) -> HRESULT,
    EncryptionBlt : proc(This: ^ID3D11VideoContext, pCryptoSession: ^ID3D11CryptoSession, pSrcSurface: ^ID3D11Texture2D, pDstSurface: ^ID3D11Texture2D, IVSize: UINT, pIV: rawptr),
    DecryptionBlt : proc(This: ^ID3D11VideoContext, pCryptoSession: ^ID3D11CryptoSession, pSrcSurface: ^ID3D11Texture2D, pDstSurface: ^ID3D11Texture2D, pEncryptedBlockInfo: ^D3D11_ENCRYPTED_BLOCK_INFO, ContentKeySize: UINT, pContentKey: rawptr, IVSize: UINT, pIV: rawptr),
    StartSessionKeyRefresh : proc(This: ^ID3D11VideoContext, pCryptoSession: ^ID3D11CryptoSession, RandomNumberSize: UINT, pRandomNumber: rawptr),
    FinishSessionKeyRefresh : proc(This: ^ID3D11VideoContext, pCryptoSession: ^ID3D11CryptoSession),
    GetEncryptionBltKey : proc(This: ^ID3D11VideoContext, pCryptoSession: ^ID3D11CryptoSession, KeySize: UINT, pReadbackKey: rawptr) -> HRESULT,
    NegotiateAuthenticatedChannelKeyExchange : proc(This: ^ID3D11VideoContext, pChannel: ^ID3D11AuthenticatedChannel, DataSize: UINT, pData: rawptr) -> HRESULT,
    QueryAuthenticatedChannel : proc(This: ^ID3D11VideoContext, pChannel: ^ID3D11AuthenticatedChannel, InputSize: UINT, pInput: rawptr, OutputSize: UINT, pOutput: rawptr) -> HRESULT,
    ConfigureAuthenticatedChannel : proc(This: ^ID3D11VideoContext, pChannel: ^ID3D11AuthenticatedChannel, InputSize: UINT, pInput: rawptr, pOutput: ^D3D11_AUTHENTICATED_CONFIGURE_OUTPUT) -> HRESULT,
    VideoProcessorSetStreamRotation : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Rotation: D3D11_VIDEO_PROCESSOR_ROTATION),
    VideoProcessorGetStreamRotation : proc(This: ^ID3D11VideoContext, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnable: ^BOOL, pRotation: ^D3D11_VIDEO_PROCESSOR_ROTATION),
}
ID3D11VideoDevice :: struct {
    using vtbl: ^ID3D11VideoDeviceVtbl
}
ID3D11VideoDeviceVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoDevice, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoDevice) -> ULONG,
    Release : proc(This: ^ID3D11VideoDevice) -> ULONG,
    CreateVideoDecoder : proc(This: ^ID3D11VideoDevice, pVideoDesc: ^D3D11_VIDEO_DECODER_DESC, pConfig: ^D3D11_VIDEO_DECODER_CONFIG, ppDecoder: ^^ID3D11VideoDecoder) -> HRESULT,
    CreateVideoProcessor : proc(This: ^ID3D11VideoDevice, pEnum: ^ID3D11VideoProcessorEnumerator, RateConversionIndex: UINT, ppVideoProcessor: ^^ID3D11VideoProcessor) -> HRESULT,
    CreateAuthenticatedChannel : proc(This: ^ID3D11VideoDevice, ChannelType: D3D11_AUTHENTICATED_CHANNEL_TYPE, ppAuthenticatedChannel: ^^ID3D11AuthenticatedChannel) -> HRESULT,
    CreateCryptoSession : proc(This: ^ID3D11VideoDevice, pCryptoType: ^GUID, pDecoderProfile: ^GUID, pKeyExchangeType: ^GUID, ppCryptoSession: ^^ID3D11CryptoSession) -> HRESULT,
    CreateVideoDecoderOutputView : proc(This: ^ID3D11VideoDevice, pResource: ^ID3D11Resource, pDesc: ^D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC, ppVDOVView: ^^ID3D11VideoDecoderOutputView) -> HRESULT,
    CreateVideoProcessorInputView : proc(This: ^ID3D11VideoDevice, pResource: ^ID3D11Resource, pEnum: ^ID3D11VideoProcessorEnumerator, pDesc: ^D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC, ppVPIView: ^^ID3D11VideoProcessorInputView) -> HRESULT,
    CreateVideoProcessorOutputView : proc(This: ^ID3D11VideoDevice, pResource: ^ID3D11Resource, pEnum: ^ID3D11VideoProcessorEnumerator, pDesc: ^D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC, ppVPOView: ^^ID3D11VideoProcessorOutputView) -> HRESULT,
    CreateVideoProcessorEnumerator : proc(This: ^ID3D11VideoDevice, pDesc: ^D3D11_VIDEO_PROCESSOR_CONTENT_DESC, ppEnum: ^^ID3D11VideoProcessorEnumerator) -> HRESULT,
    GetVideoDecoderProfileCount : proc(This: ^ID3D11VideoDevice) -> UINT,
    GetVideoDecoderProfile : proc(This: ^ID3D11VideoDevice, Index: UINT, pDecoderProfile: ^GUID) -> HRESULT,
    CheckVideoDecoderFormat : proc(This: ^ID3D11VideoDevice, pDecoderProfile: ^GUID, Format: DXGI_FORMAT, pSupported: ^BOOL) -> HRESULT,
    GetVideoDecoderConfigCount : proc(This: ^ID3D11VideoDevice, pDesc: ^D3D11_VIDEO_DECODER_DESC, pCount: ^UINT) -> HRESULT,
    GetVideoDecoderConfig : proc(This: ^ID3D11VideoDevice, pDesc: ^D3D11_VIDEO_DECODER_DESC, Index: UINT, pConfig: ^D3D11_VIDEO_DECODER_CONFIG) -> HRESULT,
    GetContentProtectionCaps : proc(This: ^ID3D11VideoDevice, pCryptoType: ^GUID, pDecoderProfile: ^GUID, pCaps: ^D3D11_VIDEO_CONTENT_PROTECTION_CAPS) -> HRESULT,
    CheckCryptoKeyExchange : proc(This: ^ID3D11VideoDevice, pCryptoType: ^GUID, pDecoderProfile: ^GUID, Index: UINT, pKeyExchangeType: ^GUID) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoDevice, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoDevice, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11Device :: struct {
    using vtbl: ^ID3D11DeviceVtbl
}
ID3D11DeviceVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Device, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Device) -> ULONG,
    Release : proc(This: ^ID3D11Device) -> ULONG,
    CreateBuffer : proc(This: ^ID3D11Device, pDesc: ^D3D11_BUFFER_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppBuffer: ^^ID3D11Buffer) -> HRESULT,
    CreateTexture1D : proc(This: ^ID3D11Device, pDesc: ^D3D11_TEXTURE1D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture1D: ^^ID3D11Texture1D) -> HRESULT,
    CreateTexture2D : proc(This: ^ID3D11Device, pDesc: ^D3D11_TEXTURE2D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture2D: ^^ID3D11Texture2D) -> HRESULT,
    CreateTexture3D : proc(This: ^ID3D11Device, pDesc: ^D3D11_TEXTURE3D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture3D: ^^ID3D11Texture3D) -> HRESULT,
    CreateShaderResourceView : proc(This: ^ID3D11Device, pResource: ^ID3D11Resource, pDesc: ^D3D11_SHADER_RESOURCE_VIEW_DESC, ppSRView: ^^ID3D11ShaderResourceView) -> HRESULT,
    CreateUnorderedAccessView : proc(This: ^ID3D11Device, pResource: ^ID3D11Resource, pDesc: ^D3D11_UNORDERED_ACCESS_VIEW_DESC, ppUAView: ^^ID3D11UnorderedAccessView) -> HRESULT,
    CreateRenderTargetView : proc(This: ^ID3D11Device, pResource: ^ID3D11Resource, pDesc: ^D3D11_RENDER_TARGET_VIEW_DESC, ppRTView: ^^ID3D11RenderTargetView) -> HRESULT,
    CreateDepthStencilView : proc(This: ^ID3D11Device, pResource: ^ID3D11Resource, pDesc: ^D3D11_DEPTH_STENCIL_VIEW_DESC, ppDepthStencilView: ^^ID3D11DepthStencilView) -> HRESULT,
    CreateInputLayout : proc(This: ^ID3D11Device, pInputElementDescs: ^D3D11_INPUT_ELEMENT_DESC, NumElements: UINT, pShaderBytecodeWithInputSignature: rawptr, BytecodeLength: SIZE_T, ppInputLayout: ^^ID3D11InputLayout) -> HRESULT,
    CreateVertexShader : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppVertexShader: ^^ID3D11VertexShader) -> HRESULT,
    CreateGeometryShader : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreateGeometryShaderWithStreamOutput : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pSODeclaration: ^D3D11_SO_DECLARATION_ENTRY, NumEntries: UINT, pBufferStrides: ^UINT, NumStrides: UINT, RasterizedStream: UINT, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreatePixelShader : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppPixelShader: ^^ID3D11PixelShader) -> HRESULT,
    CreateHullShader : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppHullShader: ^^ID3D11HullShader) -> HRESULT,
    CreateDomainShader : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppDomainShader: ^^ID3D11DomainShader) -> HRESULT,
    CreateComputeShader : proc(This: ^ID3D11Device, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppComputeShader: ^^ID3D11ComputeShader) -> HRESULT,
    CreateClassLinkage : proc(This: ^ID3D11Device, ppLinkage: ^^ID3D11ClassLinkage) -> HRESULT,
    CreateBlendState : proc(This: ^ID3D11Device, pBlendStateDesc: ^D3D11_BLEND_DESC, ppBlendState: ^^ID3D11BlendState) -> HRESULT,
    CreateDepthStencilState : proc(This: ^ID3D11Device, pDepthStencilDesc: ^D3D11_DEPTH_STENCIL_DESC, ppDepthStencilState: ^^ID3D11DepthStencilState) -> HRESULT,
    CreateRasterizerState : proc(This: ^ID3D11Device, pRasterizerDesc: ^D3D11_RASTERIZER_DESC, ppRasterizerState: ^^ID3D11RasterizerState) -> HRESULT,
    CreateSamplerState : proc(This: ^ID3D11Device, pSamplerDesc: ^D3D11_SAMPLER_DESC, ppSamplerState: ^^ID3D11SamplerState) -> HRESULT,
    CreateQuery : proc(This: ^ID3D11Device, pQueryDesc: ^D3D11_QUERY_DESC, ppQuery: ^^ID3D11Query) -> HRESULT,
    CreatePredicate : proc(This: ^ID3D11Device, pPredicateDesc: ^D3D11_QUERY_DESC, ppPredicate: ^^ID3D11Predicate) -> HRESULT,
    CreateCounter : proc(This: ^ID3D11Device, pCounterDesc: ^D3D11_COUNTER_DESC, ppCounter: ^^ID3D11Counter) -> HRESULT,
    CreateDeferredContext : proc(This: ^ID3D11Device, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext) -> HRESULT,
    OpenSharedResource : proc(This: ^ID3D11Device, hResource: HANDLE, ReturnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    CheckFormatSupport : proc(This: ^ID3D11Device, Format: DXGI_FORMAT, pFormatSupport: ^UINT) -> HRESULT,
    CheckMultisampleQualityLevels : proc(This: ^ID3D11Device, Format: DXGI_FORMAT, SampleCount: UINT, pNumQualityLevels: ^UINT) -> HRESULT,
    CheckCounterInfo : proc(This: ^ID3D11Device, pCounterInfo: ^D3D11_COUNTER_INFO),
    CheckCounter : proc(This: ^ID3D11Device, pDesc: ^D3D11_COUNTER_DESC, pType: ^D3D11_COUNTER_TYPE, pActiveCounters: ^UINT, szName: LPSTR, pNameLength: ^UINT, szUnits: LPSTR, pUnitsLength: ^UINT, szDescription: LPSTR, pDescriptionLength: ^UINT) -> HRESULT,
    CheckFeatureSupport : proc(This: ^ID3D11Device, Feature: D3D11_FEATURE, pFeatureSupportData: rawptr, FeatureSupportDataSize: UINT) -> HRESULT,
    GetPrivateData : proc(This: ^ID3D11Device, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Device, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Device, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetFeatureLevel : proc(This: ^ID3D11Device) -> D3D_FEATURE_LEVEL,
    GetCreationFlags : proc(This: ^ID3D11Device) -> UINT,
    GetDeviceRemovedReason : proc(This: ^ID3D11Device) -> HRESULT,
    GetImmediateContext : proc(This: ^ID3D11Device, ppImmediateContext: ^^ID3D11DeviceContext),
    SetExceptionMode : proc(This: ^ID3D11Device, RaiseFlags: UINT) -> HRESULT,
    GetExceptionMode : proc(This: ^ID3D11Device) -> UINT,
}
D3D11_INPUT_CLASSIFICATION :: enum u32{
    D3D11_INPUT_PER_VERTEX_DATA =  0,
    D3D11_INPUT_PER_INSTANCE_DATA =  1
    ,
}
D3D11_FILL_MODE :: enum u32{
    D3D11_FILL_WIREFRAME =  2,
    D3D11_FILL_SOLID =  3
    ,
}
D3D11_CULL_MODE :: enum u32{
    D3D11_CULL_NONE =  1,
    D3D11_CULL_FRONT =  2,
    D3D11_CULL_BACK =  3
    ,
}
D3D11_RESOURCE_DIMENSION :: enum u32{
    D3D11_RESOURCE_DIMENSION_UNKNOWN =  0,
    D3D11_RESOURCE_DIMENSION_BUFFER =  1,
    D3D11_RESOURCE_DIMENSION_TEXTURE1D =  2,
    D3D11_RESOURCE_DIMENSION_TEXTURE2D =  3,
    D3D11_RESOURCE_DIMENSION_TEXTURE3D =  4
    ,
}
D3D11_DSV_DIMENSION :: enum u32{
    D3D11_DSV_DIMENSION_UNKNOWN =  0,
    D3D11_DSV_DIMENSION_TEXTURE1D =  1,
    D3D11_DSV_DIMENSION_TEXTURE1DARRAY =  2,
    D3D11_DSV_DIMENSION_TEXTURE2D =  3,
    D3D11_DSV_DIMENSION_TEXTURE2DARRAY =  4,
    D3D11_DSV_DIMENSION_TEXTURE2DMS =  5,
    D3D11_DSV_DIMENSION_TEXTURE2DMSARRAY =  6
    ,
}
D3D11_RTV_DIMENSION :: enum u32{
    D3D11_RTV_DIMENSION_UNKNOWN =  0,
    D3D11_RTV_DIMENSION_BUFFER =  1,
    D3D11_RTV_DIMENSION_TEXTURE1D =  2,
    D3D11_RTV_DIMENSION_TEXTURE1DARRAY =  3,
    D3D11_RTV_DIMENSION_TEXTURE2D =  4,
    D3D11_RTV_DIMENSION_TEXTURE2DARRAY =  5,
    D3D11_RTV_DIMENSION_TEXTURE2DMS =  6,
    D3D11_RTV_DIMENSION_TEXTURE2DMSARRAY =  7,
    D3D11_RTV_DIMENSION_TEXTURE3D =  8
    ,
}
D3D11_UAV_DIMENSION :: enum u32{
    D3D11_UAV_DIMENSION_UNKNOWN =  0,
    D3D11_UAV_DIMENSION_BUFFER =  1,
    D3D11_UAV_DIMENSION_TEXTURE1D =  2,
    D3D11_UAV_DIMENSION_TEXTURE1DARRAY =  3,
    D3D11_UAV_DIMENSION_TEXTURE2D =  4,
    D3D11_UAV_DIMENSION_TEXTURE2DARRAY =  5,
    D3D11_UAV_DIMENSION_TEXTURE3D =  8
    ,
}
D3D11_USAGE :: enum u32{
    D3D11_USAGE_DEFAULT =  0,
    D3D11_USAGE_IMMUTABLE =  1,
    D3D11_USAGE_DYNAMIC =  2,
    D3D11_USAGE_STAGING =  3
    ,
}
D3D11_BIND_FLAG :: enum u64{
    D3D11_BIND_VERTEX_BUFFER =  0x1,
    D3D11_BIND_INDEX_BUFFER =  0x2,
    D3D11_BIND_CONSTANT_BUFFER =  0x4,
    D3D11_BIND_SHADER_RESOURCE =  0x8,
    D3D11_BIND_STREAM_OUTPUT =  0x10,
    D3D11_BIND_RENDER_TARGET =  0x20,
    D3D11_BIND_DEPTH_STENCIL =  0x40,
    D3D11_BIND_UNORDERED_ACCESS =  0x80,
    D3D11_BIND_DECODER =  0x200,
    D3D11_BIND_VIDEO_ENCODER =  0x400
    ,
}
D3D11_CPU_ACCESS_FLAG :: enum u64{
    D3D11_CPU_ACCESS_WRITE =  0x10000,
    D3D11_CPU_ACCESS_READ =  0x20000
    ,
}
D3D11_RESOURCE_MISC_FLAG :: enum u64{
    D3D11_RESOURCE_MISC_GENERATE_MIPS =  0x1,
    D3D11_RESOURCE_MISC_SHARED =  0x2,
    D3D11_RESOURCE_MISC_TEXTURECUBE =  0x4,
    D3D11_RESOURCE_MISC_DRAWINDIRECT_ARGS =  0x10,
    D3D11_RESOURCE_MISC_BUFFER_ALLOW_RAW_VIEWS =  0x20,
    D3D11_RESOURCE_MISC_BUFFER_STRUCTURED =  0x40,
    D3D11_RESOURCE_MISC_RESOURCE_CLAMP =  0x80,
    D3D11_RESOURCE_MISC_SHARED_KEYEDMUTEX =  0x100,
    D3D11_RESOURCE_MISC_GDI_COMPATIBLE =  0x200,
    D3D11_RESOURCE_MISC_SHARED_NTHANDLE =  0x800,
    D3D11_RESOURCE_MISC_RESTRICTED_CONTENT =  0x1000,
    D3D11_RESOURCE_MISC_RESTRICT_SHARED_RESOURCE =  0x2000,
    D3D11_RESOURCE_MISC_RESTRICT_SHARED_RESOURCE_DRIVER =  0x4000,
    D3D11_RESOURCE_MISC_GUARDED =  0x8000,
    D3D11_RESOURCE_MISC_TILE_POOL =  0x20000,
    D3D11_RESOURCE_MISC_TILED =  0x40000,
    D3D11_RESOURCE_MISC_HW_PROTECTED =  0x80000
    ,
}
D3D11_MAP :: enum u32{
    D3D11_MAP_READ =  1,
    D3D11_MAP_WRITE =  2,
    D3D11_MAP_READ_WRITE =  3,
    D3D11_MAP_WRITE_DISCARD =  4,
    D3D11_MAP_WRITE_NO_OVERWRITE =  5
    ,
}
D3D11_MAP_FLAG :: enum u64{
    D3D11_MAP_FLAG_DO_NOT_WAIT =  0x100000
    ,
}
D3D11_RAISE_FLAG :: enum u64{
    D3D11_RAISE_FLAG_DRIVER_INTERNAL_ERROR =  0x1
    ,
}
D3D11_CLEAR_FLAG :: enum u64{
    D3D11_CLEAR_DEPTH =  0x1,
    D3D11_CLEAR_STENCIL =  0x2
    ,
}
D3D11_COMPARISON_FUNC :: enum u32{
    D3D11_COMPARISON_NEVER =  1,
    D3D11_COMPARISON_LESS =  2,
    D3D11_COMPARISON_EQUAL =  3,
    D3D11_COMPARISON_LESS_EQUAL =  4,
    D3D11_COMPARISON_GREATER =  5,
    D3D11_COMPARISON_NOT_EQUAL =  6,
    D3D11_COMPARISON_GREATER_EQUAL =  7,
    D3D11_COMPARISON_ALWAYS =  8
    ,
}
D3D11_DEPTH_WRITE_MASK :: enum u32{
    D3D11_DEPTH_WRITE_MASK_ZERO =  0,
    D3D11_DEPTH_WRITE_MASK_ALL =  1
    ,
}
D3D11_STENCIL_OP :: enum u32{
    D3D11_STENCIL_OP_KEEP =  1,
    D3D11_STENCIL_OP_ZERO =  2,
    D3D11_STENCIL_OP_REPLACE =  3,
    D3D11_STENCIL_OP_INCR_SAT =  4,
    D3D11_STENCIL_OP_DECR_SAT =  5,
    D3D11_STENCIL_OP_INVERT =  6,
    D3D11_STENCIL_OP_INCR =  7,
    D3D11_STENCIL_OP_DECR =  8
    ,
}
D3D11_BLEND :: enum u32{
    D3D11_BLEND_ZERO =  1,
    D3D11_BLEND_ONE =  2,
    D3D11_BLEND_SRC_COLOR =  3,
    D3D11_BLEND_INV_SRC_COLOR =  4,
    D3D11_BLEND_SRC_ALPHA =  5,
    D3D11_BLEND_INV_SRC_ALPHA =  6,
    D3D11_BLEND_DEST_ALPHA =  7,
    D3D11_BLEND_INV_DEST_ALPHA =  8,
    D3D11_BLEND_DEST_COLOR =  9,
    D3D11_BLEND_INV_DEST_COLOR =  10,
    D3D11_BLEND_SRC_ALPHA_SAT =  11,
    D3D11_BLEND_BLEND_FACTOR =  14,
    D3D11_BLEND_INV_BLEND_FACTOR =  15,
    D3D11_BLEND_SRC1_COLOR =  16,
    D3D11_BLEND_INV_SRC1_COLOR =  17,
    D3D11_BLEND_SRC1_ALPHA =  18,
    D3D11_BLEND_INV_SRC1_ALPHA =  19
    ,
}
D3D11_BLEND_OP :: enum u32{
    D3D11_BLEND_OP_ADD =  1,
    D3D11_BLEND_OP_SUBTRACT =  2,
    D3D11_BLEND_OP_REV_SUBTRACT =  3,
    D3D11_BLEND_OP_MIN =  4,
    D3D11_BLEND_OP_MAX =  5
    ,
}
D3D11_COLOR_WRITE_ENABLE :: enum u32{
    D3D11_COLOR_WRITE_ENABLE_RED =  1,
    D3D11_COLOR_WRITE_ENABLE_GREEN =  2,
    D3D11_COLOR_WRITE_ENABLE_BLUE =  4,
    D3D11_COLOR_WRITE_ENABLE_ALPHA =  8,
    D3D11_COLOR_WRITE_ENABLE_ALL =  ( ( ( D3D11_COLOR_WRITE_ENABLE_RED | D3D11_COLOR_WRITE_ENABLE_GREEN )  | D3D11_COLOR_WRITE_ENABLE_BLUE )  | D3D11_COLOR_WRITE_ENABLE_ALPHA )
    ,
}
D3D11_TEXTURECUBE_FACE :: enum u32{
    D3D11_TEXTURECUBE_FACE_POSITIVE_X =  0,
    D3D11_TEXTURECUBE_FACE_NEGATIVE_X =  1,
    D3D11_TEXTURECUBE_FACE_POSITIVE_Y =  2,
    D3D11_TEXTURECUBE_FACE_NEGATIVE_Y =  3,
    D3D11_TEXTURECUBE_FACE_POSITIVE_Z =  4,
    D3D11_TEXTURECUBE_FACE_NEGATIVE_Z =  5
    ,
}
D3D11_BUFFEREX_SRV_FLAG :: enum u32{
    D3D11_BUFFEREX_SRV_FLAG_RAW =  0x1
    ,
}
D3D11_DSV_FLAG :: enum u64{
    D3D11_DSV_READ_ONLY_DEPTH =  0x1,
    D3D11_DSV_READ_ONLY_STENCIL =  0x2
    ,
}
D3D11_BUFFER_UAV_FLAG :: enum u32{
    D3D11_BUFFER_UAV_FLAG_RAW =  0x1,
    D3D11_BUFFER_UAV_FLAG_APPEND =  0x2,
    D3D11_BUFFER_UAV_FLAG_COUNTER =  0x4
    ,
}
D3D11_FILTER :: enum u32{
    D3D11_FILTER_MIN_MAG_MIP_POINT =  0,
    D3D11_FILTER_MIN_MAG_POINT_MIP_LINEAR =  0x1,
    D3D11_FILTER_MIN_POINT_MAG_LINEAR_MIP_POINT =  0x4,
    D3D11_FILTER_MIN_POINT_MAG_MIP_LINEAR =  0x5,
    D3D11_FILTER_MIN_LINEAR_MAG_MIP_POINT =  0x10,
    D3D11_FILTER_MIN_LINEAR_MAG_POINT_MIP_LINEAR =  0x11,
    D3D11_FILTER_MIN_MAG_LINEAR_MIP_POINT =  0x14,
    D3D11_FILTER_MIN_MAG_MIP_LINEAR =  0x15,
    D3D11_FILTER_ANISOTROPIC =  0x55,
    D3D11_FILTER_COMPARISON_MIN_MAG_MIP_POINT =  0x80,
    D3D11_FILTER_COMPARISON_MIN_MAG_POINT_MIP_LINEAR =  0x81,
    D3D11_FILTER_COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT =  0x84,
    D3D11_FILTER_COMPARISON_MIN_POINT_MAG_MIP_LINEAR =  0x85,
    D3D11_FILTER_COMPARISON_MIN_LINEAR_MAG_MIP_POINT =  0x90,
    D3D11_FILTER_COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR =  0x91,
    D3D11_FILTER_COMPARISON_MIN_MAG_LINEAR_MIP_POINT =  0x94,
    D3D11_FILTER_COMPARISON_MIN_MAG_MIP_LINEAR =  0x95,
    D3D11_FILTER_COMPARISON_ANISOTROPIC =  0xd5,
    D3D11_FILTER_MINIMUM_MIN_MAG_MIP_POINT =  0x100,
    D3D11_FILTER_MINIMUM_MIN_MAG_POINT_MIP_LINEAR =  0x101,
    D3D11_FILTER_MINIMUM_MIN_POINT_MAG_LINEAR_MIP_POINT =  0x104,
    D3D11_FILTER_MINIMUM_MIN_POINT_MAG_MIP_LINEAR =  0x105,
    D3D11_FILTER_MINIMUM_MIN_LINEAR_MAG_MIP_POINT =  0x110,
    D3D11_FILTER_MINIMUM_MIN_LINEAR_MAG_POINT_MIP_LINEAR =  0x111,
    D3D11_FILTER_MINIMUM_MIN_MAG_LINEAR_MIP_POINT =  0x114,
    D3D11_FILTER_MINIMUM_MIN_MAG_MIP_LINEAR =  0x115,
    D3D11_FILTER_MINIMUM_ANISOTROPIC =  0x155,
    D3D11_FILTER_MAXIMUM_MIN_MAG_MIP_POINT =  0x180,
    D3D11_FILTER_MAXIMUM_MIN_MAG_POINT_MIP_LINEAR =  0x181,
    D3D11_FILTER_MAXIMUM_MIN_POINT_MAG_LINEAR_MIP_POINT =  0x184,
    D3D11_FILTER_MAXIMUM_MIN_POINT_MAG_MIP_LINEAR =  0x185,
    D3D11_FILTER_MAXIMUM_MIN_LINEAR_MAG_MIP_POINT =  0x190,
    D3D11_FILTER_MAXIMUM_MIN_LINEAR_MAG_POINT_MIP_LINEAR =  0x191,
    D3D11_FILTER_MAXIMUM_MIN_MAG_LINEAR_MIP_POINT =  0x194,
    D3D11_FILTER_MAXIMUM_MIN_MAG_MIP_LINEAR =  0x195,
    D3D11_FILTER_MAXIMUM_ANISOTROPIC =  0x1d5
    ,
}
D3D11_FILTER_TYPE :: enum u32{
    D3D11_FILTER_TYPE_POINT =  0,
    D3D11_FILTER_TYPE_LINEAR =  1
    ,
}
D3D11_FILTER_REDUCTION_TYPE :: enum u32{
    D3D11_FILTER_REDUCTION_TYPE_STANDARD =  0,
    D3D11_FILTER_REDUCTION_TYPE_COMPARISON =  1,
    D3D11_FILTER_REDUCTION_TYPE_MINIMUM =  2,
    D3D11_FILTER_REDUCTION_TYPE_MAXIMUM =  3
    ,
}
D3D11_TEXTURE_ADDRESS_MODE :: enum u32{
    D3D11_TEXTURE_ADDRESS_WRAP =  1,
    D3D11_TEXTURE_ADDRESS_MIRROR =  2,
    D3D11_TEXTURE_ADDRESS_CLAMP =  3,
    D3D11_TEXTURE_ADDRESS_BORDER =  4,
    D3D11_TEXTURE_ADDRESS_MIRROR_ONCE =  5
    ,
}
D3D11_FORMAT_SUPPORT :: enum u32{
    D3D11_FORMAT_SUPPORT_BUFFER =  0x1,
    D3D11_FORMAT_SUPPORT_IA_VERTEX_BUFFER =  0x2,
    D3D11_FORMAT_SUPPORT_IA_INDEX_BUFFER =  0x4,
    D3D11_FORMAT_SUPPORT_SO_BUFFER =  0x8,
    D3D11_FORMAT_SUPPORT_TEXTURE1D =  0x10,
    D3D11_FORMAT_SUPPORT_TEXTURE2D =  0x20,
    D3D11_FORMAT_SUPPORT_TEXTURE3D =  0x40,
    D3D11_FORMAT_SUPPORT_TEXTURECUBE =  0x80,
    D3D11_FORMAT_SUPPORT_SHADER_LOAD =  0x100,
    D3D11_FORMAT_SUPPORT_SHADER_SAMPLE =  0x200,
    D3D11_FORMAT_SUPPORT_SHADER_SAMPLE_COMPARISON =  0x400,
    D3D11_FORMAT_SUPPORT_SHADER_SAMPLE_MONO_TEXT =  0x800,
    D3D11_FORMAT_SUPPORT_MIP =  0x1000,
    D3D11_FORMAT_SUPPORT_MIP_AUTOGEN =  0x2000,
    D3D11_FORMAT_SUPPORT_RENDER_TARGET =  0x4000,
    D3D11_FORMAT_SUPPORT_BLENDABLE =  0x8000,
    D3D11_FORMAT_SUPPORT_DEPTH_STENCIL =  0x10000,
    D3D11_FORMAT_SUPPORT_CPU_LOCKABLE =  0x20000,
    D3D11_FORMAT_SUPPORT_MULTISAMPLE_RESOLVE =  0x40000,
    D3D11_FORMAT_SUPPORT_DISPLAY =  0x80000,
    D3D11_FORMAT_SUPPORT_CAST_WITHIN_BIT_LAYOUT =  0x100000,
    D3D11_FORMAT_SUPPORT_MULTISAMPLE_RENDERTARGET =  0x200000,
    D3D11_FORMAT_SUPPORT_MULTISAMPLE_LOAD =  0x400000,
    D3D11_FORMAT_SUPPORT_SHADER_GATHER =  0x800000,
    D3D11_FORMAT_SUPPORT_BACK_BUFFER_CAST =  0x1000000,
    D3D11_FORMAT_SUPPORT_TYPED_UNORDERED_ACCESS_VIEW =  0x2000000,
    D3D11_FORMAT_SUPPORT_SHADER_GATHER_COMPARISON =  0x4000000,
    D3D11_FORMAT_SUPPORT_DECODER_OUTPUT =  0x8000000,
    D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_OUTPUT =  0x10000000,
    D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_INPUT =  0x20000000,
    D3D11_FORMAT_SUPPORT_VIDEO_ENCODER =  0x40000000
    ,
}
D3D11_FORMAT_SUPPORT2 :: enum u32{
    D3D11_FORMAT_SUPPORT2_UAV_ATOMIC_ADD =  0x1,
    D3D11_FORMAT_SUPPORT2_UAV_ATOMIC_BITWISE_OPS =  0x2,
    D3D11_FORMAT_SUPPORT2_UAV_ATOMIC_COMPARE_STORE_OR_COMPARE_EXCHANGE =  0x4,
    D3D11_FORMAT_SUPPORT2_UAV_ATOMIC_EXCHANGE =  0x8,
    D3D11_FORMAT_SUPPORT2_UAV_ATOMIC_SIGNED_MIN_OR_MAX =  0x10,
    D3D11_FORMAT_SUPPORT2_UAV_ATOMIC_UNSIGNED_MIN_OR_MAX =  0x20,
    D3D11_FORMAT_SUPPORT2_UAV_TYPED_LOAD =  0x40,
    D3D11_FORMAT_SUPPORT2_UAV_TYPED_STORE =  0x80,
    D3D11_FORMAT_SUPPORT2_OUTPUT_MERGER_LOGIC_OP =  0x100,
    D3D11_FORMAT_SUPPORT2_TILED =  0x200,
    D3D11_FORMAT_SUPPORT2_SHAREABLE =  0x400,
    D3D11_FORMAT_SUPPORT2_MULTIPLANE_OVERLAY =  0x4000
    ,
}
D3D11_ASYNC_GETDATA_FLAG :: enum u32{
    D3D11_ASYNC_GETDATA_DONOTFLUSH =  0x1
    ,
}
D3D11_QUERY :: enum u32{
    D3D11_QUERY_EVENT =  0,
    D3D11_QUERY_OCCLUSION =  ( D3D11_QUERY_EVENT + 1 ) ,
    D3D11_QUERY_TIMESTAMP =  ( D3D11_QUERY_OCCLUSION + 1 ) ,
    D3D11_QUERY_TIMESTAMP_DISJOINT =  ( D3D11_QUERY_TIMESTAMP + 1 ) ,
    D3D11_QUERY_PIPELINE_STATISTICS =  ( D3D11_QUERY_TIMESTAMP_DISJOINT + 1 ) ,
    D3D11_QUERY_OCCLUSION_PREDICATE =  ( D3D11_QUERY_PIPELINE_STATISTICS + 1 ) ,
    D3D11_QUERY_SO_STATISTICS =  ( D3D11_QUERY_OCCLUSION_PREDICATE + 1 ) ,
    D3D11_QUERY_SO_OVERFLOW_PREDICATE =  ( D3D11_QUERY_SO_STATISTICS + 1 ) ,
    D3D11_QUERY_SO_STATISTICS_STREAM0 =  ( D3D11_QUERY_SO_OVERFLOW_PREDICATE + 1 ) ,
    D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM0 =  ( D3D11_QUERY_SO_STATISTICS_STREAM0 + 1 ) ,
    D3D11_QUERY_SO_STATISTICS_STREAM1 =  ( D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM0 + 1 ) ,
    D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM1 =  ( D3D11_QUERY_SO_STATISTICS_STREAM1 + 1 ) ,
    D3D11_QUERY_SO_STATISTICS_STREAM2 =  ( D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM1 + 1 ) ,
    D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM2 =  ( D3D11_QUERY_SO_STATISTICS_STREAM2 + 1 ) ,
    D3D11_QUERY_SO_STATISTICS_STREAM3 =  ( D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM2 + 1 ) ,
    D3D11_QUERY_SO_OVERFLOW_PREDICATE_STREAM3 =  ( D3D11_QUERY_SO_STATISTICS_STREAM3 + 1 )
    ,
}
D3D11_QUERY_MISC_FLAG :: enum u32{
    D3D11_QUERY_MISC_PREDICATEHINT =  0x1
    ,
}
D3D11_COUNTER :: enum u32{
    D3D11_COUNTER_DEVICE_DEPENDENT_0 =  0x40000000
    ,
}
D3D11_COUNTER_TYPE :: enum u32{
    D3D11_COUNTER_TYPE_FLOAT32 =  0,
    D3D11_COUNTER_TYPE_UINT16 =  ( D3D11_COUNTER_TYPE_FLOAT32 + 1 ) ,
    D3D11_COUNTER_TYPE_UINT32 =  ( D3D11_COUNTER_TYPE_UINT16 + 1 ) ,
    D3D11_COUNTER_TYPE_UINT64 =  ( D3D11_COUNTER_TYPE_UINT32 + 1 )
    ,
}
D3D11_STANDARD_MULTISAMPLE_QUALITY_LEVELS :: enum u32{
    D3D11_STANDARD_MULTISAMPLE_PATTERN =  0xffffffff,
    D3D11_CENTER_MULTISAMPLE_PATTERN =  0xfffffffe
    ,
}
D3D11_DEVICE_CONTEXT_TYPE :: enum u32{
    D3D11_DEVICE_CONTEXT_IMMEDIATE =  0,
    D3D11_DEVICE_CONTEXT_DEFERRED =  ( D3D11_DEVICE_CONTEXT_IMMEDIATE + 1 )
    ,
}
D3D11_FEATURE :: enum u32{
    D3D11_FEATURE_THREADING =  0,
    D3D11_FEATURE_DOUBLES =  ( D3D11_FEATURE_THREADING + 1 ) ,
    D3D11_FEATURE_FORMAT_SUPPORT =  ( D3D11_FEATURE_DOUBLES + 1 ) ,
    D3D11_FEATURE_FORMAT_SUPPORT2 =  ( D3D11_FEATURE_FORMAT_SUPPORT + 1 ) ,
    D3D11_FEATURE_D3D10_X_HARDWARE_OPTIONS =  ( D3D11_FEATURE_FORMAT_SUPPORT2 + 1 ) ,
    D3D11_FEATURE_D3D11_OPTIONS =  ( D3D11_FEATURE_D3D10_X_HARDWARE_OPTIONS + 1 ) ,
    D3D11_FEATURE_ARCHITECTURE_INFO =  ( D3D11_FEATURE_D3D11_OPTIONS + 1 ) ,
    D3D11_FEATURE_D3D9_OPTIONS =  ( D3D11_FEATURE_ARCHITECTURE_INFO + 1 ) ,
    D3D11_FEATURE_SHADER_MIN_PRECISION_SUPPORT =  ( D3D11_FEATURE_D3D9_OPTIONS + 1 ) ,
    D3D11_FEATURE_D3D9_SHADOW_SUPPORT =  ( D3D11_FEATURE_SHADER_MIN_PRECISION_SUPPORT + 1 ) ,
    D3D11_FEATURE_D3D11_OPTIONS1 =  ( D3D11_FEATURE_D3D9_SHADOW_SUPPORT + 1 ) ,
    D3D11_FEATURE_D3D9_SIMPLE_INSTANCING_SUPPORT =  ( D3D11_FEATURE_D3D11_OPTIONS1 + 1 ) ,
    D3D11_FEATURE_MARKER_SUPPORT =  ( D3D11_FEATURE_D3D9_SIMPLE_INSTANCING_SUPPORT + 1 ) ,
    D3D11_FEATURE_D3D9_OPTIONS1 =  ( D3D11_FEATURE_MARKER_SUPPORT + 1 ) ,
    D3D11_FEATURE_D3D11_OPTIONS2 =  ( D3D11_FEATURE_D3D9_OPTIONS1 + 1 ) ,
    D3D11_FEATURE_D3D11_OPTIONS3 =  ( D3D11_FEATURE_D3D11_OPTIONS2 + 1 ) ,
    D3D11_FEATURE_GPU_VIRTUAL_ADDRESS_SUPPORT =  ( D3D11_FEATURE_D3D11_OPTIONS3 + 1 ) ,
    D3D11_FEATURE_D3D11_OPTIONS4 =  ( D3D11_FEATURE_GPU_VIRTUAL_ADDRESS_SUPPORT + 1 ) ,
    D3D11_FEATURE_SHADER_CACHE =  ( D3D11_FEATURE_D3D11_OPTIONS4 + 1 ) ,
    D3D11_FEATURE_D3D11_OPTIONS5 =  ( D3D11_FEATURE_SHADER_CACHE + 1 )
    ,
}
D3D11_SHADER_MIN_PRECISION_SUPPORT :: enum u32{
    D3D11_SHADER_MIN_PRECISION_10_BIT =  0x1,
    D3D11_SHADER_MIN_PRECISION_16_BIT =  0x2
    ,
}
D3D11_TILED_RESOURCES_TIER :: enum u32{
    D3D11_TILED_RESOURCES_NOT_SUPPORTED =  0,
    D3D11_TILED_RESOURCES_TIER_1 =  1,
    D3D11_TILED_RESOURCES_TIER_2 =  2,
    D3D11_TILED_RESOURCES_TIER_3 =  3
    ,
}
D3D11_CONSERVATIVE_RASTERIZATION_TIER :: enum u32{
    D3D11_CONSERVATIVE_RASTERIZATION_NOT_SUPPORTED =  0,
    D3D11_CONSERVATIVE_RASTERIZATION_TIER_1 =  1,
    D3D11_CONSERVATIVE_RASTERIZATION_TIER_2 =  2,
    D3D11_CONSERVATIVE_RASTERIZATION_TIER_3 =  3
    ,
}
D3D11_SHADER_CACHE_SUPPORT_FLAGS :: enum u32{
    D3D11_SHADER_CACHE_SUPPORT_NONE =  0,
    D3D11_SHADER_CACHE_SUPPORT_AUTOMATIC_INPROC_CACHE =  0x1,
    D3D11_SHADER_CACHE_SUPPORT_AUTOMATIC_DISK_CACHE =  0x2
    ,
}
D3D11_SHARED_RESOURCE_TIER :: enum u32{
    D3D11_SHARED_RESOURCE_TIER_0 =  0,
    D3D11_SHARED_RESOURCE_TIER_1 =  ( D3D11_SHARED_RESOURCE_TIER_0 + 1 ) ,
    D3D11_SHARED_RESOURCE_TIER_2 =  ( D3D11_SHARED_RESOURCE_TIER_1 + 1 )
    ,
}
D3D11_VIDEO_DECODER_BUFFER_TYPE :: enum u32{
    D3D11_VIDEO_DECODER_BUFFER_PICTURE_PARAMETERS =  0,
    D3D11_VIDEO_DECODER_BUFFER_MACROBLOCK_CONTROL =  1,
    D3D11_VIDEO_DECODER_BUFFER_RESIDUAL_DIFFERENCE =  2,
    D3D11_VIDEO_DECODER_BUFFER_DEBLOCKING_CONTROL =  3,
    D3D11_VIDEO_DECODER_BUFFER_INVERSE_QUANTIZATION_MATRIX =  4,
    D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL =  5,
    D3D11_VIDEO_DECODER_BUFFER_BITSTREAM =  6,
    D3D11_VIDEO_DECODER_BUFFER_MOTION_VECTOR =  7,
    D3D11_VIDEO_DECODER_BUFFER_FILM_GRAIN =  8
    ,
}
D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT :: enum u32{
    D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT_INPUT =  0x1,
    D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT_OUTPUT =  0x2
    ,
}
D3D11_VIDEO_PROCESSOR_DEVICE_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_DEVICE_CAPS_LINEAR_SPACE =  0x1,
    D3D11_VIDEO_PROCESSOR_DEVICE_CAPS_xvYCC =  0x2,
    D3D11_VIDEO_PROCESSOR_DEVICE_CAPS_RGB_RANGE_CONVERSION =  0x4,
    D3D11_VIDEO_PROCESSOR_DEVICE_CAPS_YCbCr_MATRIX_CONVERSION =  0x8,
    D3D11_VIDEO_PROCESSOR_DEVICE_CAPS_NOMINAL_RANGE =  0x10
    ,
}
D3D11_VIDEO_PROCESSOR_FEATURE_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_ALPHA_FILL =  0x1,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_CONSTRICTION =  0x2,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_LUMA_KEY =  0x4,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_ALPHA_PALETTE =  0x8,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_LEGACY =  0x10,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_STEREO =  0x20,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_ROTATION =  0x40,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_ALPHA_STREAM =  0x80,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_PIXEL_ASPECT_RATIO =  0x100,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_MIRROR =  0x200,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_SHADER_USAGE =  0x400,
    D3D11_VIDEO_PROCESSOR_FEATURE_CAPS_METADATA_HDR10 =  0x800
    ,
}
D3D11_VIDEO_PROCESSOR_FILTER_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_BRIGHTNESS =  0x1,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_CONTRAST =  0x2,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_HUE =  0x4,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_SATURATION =  0x8,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_NOISE_REDUCTION =  0x10,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_EDGE_ENHANCEMENT =  0x20,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_ANAMORPHIC_SCALING =  0x40,
    D3D11_VIDEO_PROCESSOR_FILTER_CAPS_STEREO_ADJUSTMENT =  0x80
    ,
}
D3D11_VIDEO_PROCESSOR_FORMAT_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_FORMAT_CAPS_RGB_INTERLACED =  0x1,
    D3D11_VIDEO_PROCESSOR_FORMAT_CAPS_RGB_PROCAMP =  0x2,
    D3D11_VIDEO_PROCESSOR_FORMAT_CAPS_RGB_LUMA_KEY =  0x4,
    D3D11_VIDEO_PROCESSOR_FORMAT_CAPS_PALETTE_INTERLACED =  0x8
    ,
}
D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_DENOISE =  0x1,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_DERINGING =  0x2,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_EDGE_ENHANCEMENT =  0x4,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_COLOR_CORRECTION =  0x8,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_FLESH_TONE_MAPPING =  0x10,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_IMAGE_STABILIZATION =  0x20,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_SUPER_RESOLUTION =  0x40,
    D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS_ANAMORPHIC_SCALING =  0x80
    ,
}
D3D11_VIDEO_PROCESSOR_STEREO_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_STEREO_CAPS_MONO_OFFSET =  0x1,
    D3D11_VIDEO_PROCESSOR_STEREO_CAPS_ROW_INTERLEAVED =  0x2,
    D3D11_VIDEO_PROCESSOR_STEREO_CAPS_COLUMN_INTERLEAVED =  0x4,
    D3D11_VIDEO_PROCESSOR_STEREO_CAPS_CHECKERBOARD =  0x8,
    D3D11_VIDEO_PROCESSOR_STEREO_CAPS_FLIP_MODE =  0x10
    ,
}
D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_BLEND =  0x1,
    D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_BOB =  0x2,
    D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_ADAPTIVE =  0x4,
    D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_MOTION_COMPENSATION =  0x8,
    D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_INVERSE_TELECINE =  0x10,
    D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_FRAME_RATE_CONVERSION =  0x20
    ,
}
D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS :: enum u32{
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_32 =  0x1,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_22 =  0x2,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_2224 =  0x4,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_2332 =  0x8,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_32322 =  0x10,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_55 =  0x20,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_64 =  0x40,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_87 =  0x80,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_222222222223 =  0x100,
    D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS_OTHER =  0x80000000
    ,
}
D3D11_CONTENT_PROTECTION_CAPS :: enum u32{
    D3D11_CONTENT_PROTECTION_CAPS_SOFTWARE =  0x1,
    D3D11_CONTENT_PROTECTION_CAPS_HARDWARE =  0x2,
    D3D11_CONTENT_PROTECTION_CAPS_PROTECTION_ALWAYS_ON =  0x4,
    D3D11_CONTENT_PROTECTION_CAPS_PARTIAL_DECRYPTION =  0x8,
    D3D11_CONTENT_PROTECTION_CAPS_CONTENT_KEY =  0x10,
    D3D11_CONTENT_PROTECTION_CAPS_FRESHEN_SESSION_KEY =  0x20,
    D3D11_CONTENT_PROTECTION_CAPS_ENCRYPTED_READ_BACK =  0x40,
    D3D11_CONTENT_PROTECTION_CAPS_ENCRYPTED_READ_BACK_KEY =  0x80,
    D3D11_CONTENT_PROTECTION_CAPS_SEQUENTIAL_CTR_IV =  0x100,
    D3D11_CONTENT_PROTECTION_CAPS_ENCRYPT_SLICEDATA_ONLY =  0x200,
    D3D11_CONTENT_PROTECTION_CAPS_DECRYPTION_BLT =  0x400,
    D3D11_CONTENT_PROTECTION_CAPS_HARDWARE_PROTECT_UNCOMPRESSED =  0x800,
    D3D11_CONTENT_PROTECTION_CAPS_HARDWARE_PROTECTED_MEMORY_PAGEABLE =  0x1000,
    D3D11_CONTENT_PROTECTION_CAPS_HARDWARE_TEARDOWN =  0x2000,
    D3D11_CONTENT_PROTECTION_CAPS_HARDWARE_DRM_COMMUNICATION =  0x4000,
    D3D11_CONTENT_PROTECTION_CAPS_HARDWARE_DRM_COMMUNICATION_MULTI_THREADED =  0x8000
    ,
}
D3D11_VIDEO_PROCESSOR_FILTER :: enum u32{
    D3D11_VIDEO_PROCESSOR_FILTER_BRIGHTNESS =  0,
    D3D11_VIDEO_PROCESSOR_FILTER_CONTRAST =  1,
    D3D11_VIDEO_PROCESSOR_FILTER_HUE =  2,
    D3D11_VIDEO_PROCESSOR_FILTER_SATURATION =  3,
    D3D11_VIDEO_PROCESSOR_FILTER_NOISE_REDUCTION =  4,
    D3D11_VIDEO_PROCESSOR_FILTER_EDGE_ENHANCEMENT =  5,
    D3D11_VIDEO_PROCESSOR_FILTER_ANAMORPHIC_SCALING =  6,
    D3D11_VIDEO_PROCESSOR_FILTER_STEREO_ADJUSTMENT =  7
    ,
}
D3D11_VIDEO_FRAME_FORMAT :: enum u32{
    D3D11_VIDEO_FRAME_FORMAT_PROGRESSIVE =  0,
    D3D11_VIDEO_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST =  1,
    D3D11_VIDEO_FRAME_FORMAT_INTERLACED_BOTTOM_FIELD_FIRST =  2
    ,
}
D3D11_VIDEO_USAGE :: enum u32{
    D3D11_VIDEO_USAGE_PLAYBACK_NORMAL =  0,
    D3D11_VIDEO_USAGE_OPTIMAL_SPEED =  1,
    D3D11_VIDEO_USAGE_OPTIMAL_QUALITY =  2
    ,
}
D3D11_VIDEO_PROCESSOR_NOMINAL_RANGE :: enum u32{
    D3D11_VIDEO_PROCESSOR_NOMINAL_RANGE_UNDEFINED =  0,
    D3D11_VIDEO_PROCESSOR_NOMINAL_RANGE_16_235 =  1,
    D3D11_VIDEO_PROCESSOR_NOMINAL_RANGE_0_255 =  2
    ,
}
D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE :: enum u32{
    D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE_OPAQUE =  0,
    D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE_BACKGROUND =  1,
    D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE_DESTINATION =  2,
    D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE_SOURCE_STREAM =  3
    ,
}
D3D11_VIDEO_PROCESSOR_OUTPUT_RATE :: enum u32{
    D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL =  0,
    D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_HALF =  1,
    D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_CUSTOM =  2
    ,
}
D3D11_VIDEO_PROCESSOR_STEREO_FORMAT :: enum u32{
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_MONO =  0,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_HORIZONTAL =  1,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_VERTICAL =  2,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_SEPARATE =  3,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_MONO_OFFSET =  4,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_ROW_INTERLEAVED =  5,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_COLUMN_INTERLEAVED =  6,
    D3D11_VIDEO_PROCESSOR_STEREO_FORMAT_CHECKERBOARD =  7
    ,
}
D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE :: enum u32{
    D3D11_VIDEO_PROCESSOR_STEREO_FLIP_NONE =  0,
    D3D11_VIDEO_PROCESSOR_STEREO_FLIP_FRAME0 =  1,
    D3D11_VIDEO_PROCESSOR_STEREO_FLIP_FRAME1 =  2
    ,
}
D3D11_VIDEO_PROCESSOR_ROTATION :: enum u32{
    D3D11_VIDEO_PROCESSOR_ROTATION_IDENTITY =  0,
    D3D11_VIDEO_PROCESSOR_ROTATION_90 =  1,
    D3D11_VIDEO_PROCESSOR_ROTATION_180 =  2,
    D3D11_VIDEO_PROCESSOR_ROTATION_270 =  3
    ,
}
D3D11_AUTHENTICATED_CHANNEL_TYPE :: enum u32{
    D3D11_AUTHENTICATED_CHANNEL_D3D11 =  1,
    D3D11_AUTHENTICATED_CHANNEL_DRIVER_SOFTWARE =  2,
    D3D11_AUTHENTICATED_CHANNEL_DRIVER_HARDWARE =  3
    ,
}
D3D11_AUTHENTICATED_PROCESS_IDENTIFIER_TYPE :: enum u32{
    D3D11_PROCESSIDTYPE_UNKNOWN =  0,
    D3D11_PROCESSIDTYPE_DWM =  1,
    D3D11_PROCESSIDTYPE_HANDLE =  2
    ,
}
D3D11_BUS_TYPE :: enum u32{
    D3D11_BUS_TYPE_OTHER =  0,
    D3D11_BUS_TYPE_PCI =  0x1,
    D3D11_BUS_TYPE_PCIX =  0x2,
    D3D11_BUS_TYPE_PCIEXPRESS =  0x3,
    D3D11_BUS_TYPE_AGP =  0x4,
    D3D11_BUS_IMPL_MODIFIER_INSIDE_OF_CHIPSET =  0x10000,
    D3D11_BUS_IMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP =  0x20000,
    D3D11_BUS_IMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET =  0x30000,
    D3D11_BUS_IMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR =  0x40000,
    D3D11_BUS_IMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE =  0x50000,
    D3D11_BUS_IMPL_MODIFIER_NON_STANDARD =  0x80000000
    ,
}
D3D11_VDOV_DIMENSION :: enum u32{
    D3D11_VDOV_DIMENSION_UNKNOWN =  0,
    D3D11_VDOV_DIMENSION_TEXTURE2D =  1
    ,
}
D3D11_VPIV_DIMENSION :: enum u32{
    D3D11_VPIV_DIMENSION_UNKNOWN =  0,
    D3D11_VPIV_DIMENSION_TEXTURE2D =  1
    ,
}
D3D11_VPOV_DIMENSION :: enum u32{
    D3D11_VPOV_DIMENSION_UNKNOWN =  0,
    D3D11_VPOV_DIMENSION_TEXTURE2D =  1,
    D3D11_VPOV_DIMENSION_TEXTURE2DARRAY =  2
    ,
}
D3D11_CREATE_DEVICE_FLAG :: enum u32{
    D3D11_CREATE_DEVICE_SINGLETHREADED =  0x1,
    D3D11_CREATE_DEVICE_DEBUG =  0x2,
    D3D11_CREATE_DEVICE_SWITCH_TO_REF =  0x4,
    D3D11_CREATE_DEVICE_PREVENT_INTERNAL_THREADING_OPTIMIZATIONS =  0x8,
    D3D11_CREATE_DEVICE_BGRA_SUPPORT =  0x20,
    D3D11_CREATE_DEVICE_DEBUGGABLE =  0x40,
    D3D11_CREATE_DEVICE_PREVENT_ALTERING_LAYER_SETTINGS_FROM_REGISTRY =  0x80,
    D3D11_CREATE_DEVICE_DISABLE_GPU_TIMEOUT =  0x100,
    D3D11_CREATE_DEVICE_VIDEO_SUPPORT =  0x800
    ,
}
