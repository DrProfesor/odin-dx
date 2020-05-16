package dx

D3D11_TEXTURE2D_DESC1 :: struct {
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
    TextureLayout: UINT,
}
ID3D11Texture2D1 :: struct {
    using vtbl: ^ID3D11Texture2D1Vtbl
}
ID3D11Texture2D1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Texture2D1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Texture2D1) -> ULONG,
    Release : proc(This: ^ID3D11Texture2D1) -> ULONG,
    GetDevice : proc(This: ^ID3D11Texture2D1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Texture2D1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Texture2D1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Texture2D1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Texture2D1, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Texture2D1, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Texture2D1) -> UINT,
    GetDesc : proc(This: ^ID3D11Texture2D1, pDesc: ^D3D11_TEXTURE2D_DESC),
    GetDesc1 : proc(This: ^ID3D11Texture2D1, pDesc: ^D3D11_TEXTURE2D_DESC1),
}
D3D11_TEXTURE3D_DESC1 :: struct {
    Width: UINT,
    Height: UINT,
    Depth: UINT,
    MipLevels: UINT,
    Format: DXGI_FORMAT,
    Usage: D3D11_USAGE,
    BindFlags: UINT,
    CPUAccessFlags: UINT,
    MiscFlags: UINT,
    TextureLayout: UINT,
}
ID3D11Texture3D1 :: struct {
    using vtbl: ^ID3D11Texture3D1Vtbl
}
ID3D11Texture3D1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Texture3D1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Texture3D1) -> ULONG,
    Release : proc(This: ^ID3D11Texture3D1) -> ULONG,
    GetDevice : proc(This: ^ID3D11Texture3D1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Texture3D1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Texture3D1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Texture3D1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetType : proc(This: ^ID3D11Texture3D1, pResourceDimension: ^D3D11_RESOURCE_DIMENSION),
    SetEvictionPriority : proc(This: ^ID3D11Texture3D1, EvictionPriority: UINT),
    GetEvictionPriority : proc(This: ^ID3D11Texture3D1) -> UINT,
    GetDesc : proc(This: ^ID3D11Texture3D1, pDesc: ^D3D11_TEXTURE3D_DESC),
    GetDesc1 : proc(This: ^ID3D11Texture3D1, pDesc: ^D3D11_TEXTURE3D_DESC1),
}
D3D11_RASTERIZER_DESC2 :: struct {
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
    ForcedSampleCount: UINT,
    ConservativeRaster: UINT,
}
ID3D11RasterizerState2 :: struct {
    using vtbl: ^ID3D11RasterizerState2Vtbl
}
ID3D11RasterizerState2Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11RasterizerState2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11RasterizerState2) -> ULONG,
    Release : proc(This: ^ID3D11RasterizerState2) -> ULONG,
    GetDevice : proc(This: ^ID3D11RasterizerState2, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11RasterizerState2, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11RasterizerState2, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11RasterizerState2, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11RasterizerState2, pDesc: ^D3D11_RASTERIZER_DESC),
    GetDesc1 : proc(This: ^ID3D11RasterizerState2, pDesc: ^D3D11_RASTERIZER_DESC1),
    GetDesc2 : proc(This: ^ID3D11RasterizerState2, pDesc: ^D3D11_RASTERIZER_DESC2),
}
D3D11_TEX2D_SRV1 :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
    PlaneSlice: UINT,
}
D3D11_TEX2D_ARRAY_SRV1 :: struct {
    MostDetailedMip: UINT,
    MipLevels: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
    PlaneSlice: UINT,
}
D3D11_SHADER_RESOURCE_VIEW_DESC1 :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_SRV_DIMENSION,
    _2: struct #raw_union {
        D3D11_BUFFER_SRV, //Buffer
        D3D11_TEX1D_SRV, //Texture1D
        D3D11_TEX1D_ARRAY_SRV, //Texture1DArray
        D3D11_TEX2D_SRV1, //Texture2D
        D3D11_TEX2D_ARRAY_SRV1, //Texture2DArray
        D3D11_TEX2DMS_SRV, //Texture2DMS
        D3D11_TEX2DMS_ARRAY_SRV, //Texture2DMSArray
        D3D11_TEX3D_SRV, //Texture3D
        D3D11_TEXCUBE_SRV, //TextureCube
        D3D11_TEXCUBE_ARRAY_SRV, //TextureCubeArray
        D3D11_BUFFEREX_SRV, //BufferEx
    },
}
ID3D11ShaderResourceView1 :: struct {
    using vtbl: ^ID3D11ShaderResourceView1Vtbl
}
ID3D11ShaderResourceView1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11ShaderResourceView1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11ShaderResourceView1) -> ULONG,
    Release : proc(This: ^ID3D11ShaderResourceView1) -> ULONG,
    GetDevice : proc(This: ^ID3D11ShaderResourceView1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11ShaderResourceView1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11ShaderResourceView1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11ShaderResourceView1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11ShaderResourceView1, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11ShaderResourceView1, pDesc: ^D3D11_SHADER_RESOURCE_VIEW_DESC),
    GetDesc1 : proc(This: ^ID3D11ShaderResourceView1, pDesc1: ^D3D11_SHADER_RESOURCE_VIEW_DESC1),
}
D3D11_TEX2D_RTV1 :: struct {
    MipSlice: UINT,
    PlaneSlice: UINT,
}
D3D11_TEX2D_ARRAY_RTV1 :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
    PlaneSlice: UINT,
}
D3D11_RENDER_TARGET_VIEW_DESC1 :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_RTV_DIMENSION,
    _2: struct #raw_union {
        D3D11_BUFFER_RTV, //Buffer
        D3D11_TEX1D_RTV, //Texture1D
        D3D11_TEX1D_ARRAY_RTV, //Texture1DArray
        D3D11_TEX2D_RTV1, //Texture2D
        D3D11_TEX2D_ARRAY_RTV1, //Texture2DArray
        D3D11_TEX2DMS_RTV, //Texture2DMS
        D3D11_TEX2DMS_ARRAY_RTV, //Texture2DMSArray
        D3D11_TEX3D_RTV, //Texture3D
    },
}
ID3D11RenderTargetView1 :: struct {
    using vtbl: ^ID3D11RenderTargetView1Vtbl
}
ID3D11RenderTargetView1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11RenderTargetView1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11RenderTargetView1) -> ULONG,
    Release : proc(This: ^ID3D11RenderTargetView1) -> ULONG,
    GetDevice : proc(This: ^ID3D11RenderTargetView1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11RenderTargetView1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11RenderTargetView1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11RenderTargetView1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11RenderTargetView1, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11RenderTargetView1, pDesc: ^D3D11_RENDER_TARGET_VIEW_DESC),
    GetDesc1 : proc(This: ^ID3D11RenderTargetView1, pDesc1: ^D3D11_RENDER_TARGET_VIEW_DESC1),
}
D3D11_TEX2D_UAV1 :: struct {
    MipSlice: UINT,
    PlaneSlice: UINT,
}
D3D11_TEX2D_ARRAY_UAV1 :: struct {
    MipSlice: UINT,
    FirstArraySlice: UINT,
    ArraySize: UINT,
    PlaneSlice: UINT,
}
D3D11_UNORDERED_ACCESS_VIEW_DESC1 :: struct {
    Format: DXGI_FORMAT,
    ViewDimension: D3D11_UAV_DIMENSION,
    _2: struct #raw_union {
        D3D11_BUFFER_UAV, //Buffer
        D3D11_TEX1D_UAV, //Texture1D
        D3D11_TEX1D_ARRAY_UAV, //Texture1DArray
        D3D11_TEX2D_UAV1, //Texture2D
        D3D11_TEX2D_ARRAY_UAV1, //Texture2DArray
        D3D11_TEX3D_UAV, //Texture3D
    },
}
ID3D11UnorderedAccessView1 :: struct {
    using vtbl: ^ID3D11UnorderedAccessView1Vtbl
}
ID3D11UnorderedAccessView1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11UnorderedAccessView1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11UnorderedAccessView1) -> ULONG,
    Release : proc(This: ^ID3D11UnorderedAccessView1) -> ULONG,
    GetDevice : proc(This: ^ID3D11UnorderedAccessView1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11UnorderedAccessView1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11UnorderedAccessView1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11UnorderedAccessView1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetResource : proc(This: ^ID3D11UnorderedAccessView1, ppResource: ^^ID3D11Resource),
    GetDesc : proc(This: ^ID3D11UnorderedAccessView1, pDesc: ^D3D11_UNORDERED_ACCESS_VIEW_DESC),
    GetDesc1 : proc(This: ^ID3D11UnorderedAccessView1, pDesc1: ^D3D11_UNORDERED_ACCESS_VIEW_DESC1),
}
D3D11_QUERY_DESC1 :: struct {
    Query: D3D11_QUERY,
    MiscFlags: UINT,
    ContextType: UINT,
}
ID3D11Query1 :: struct {
    using vtbl: ^ID3D11Query1Vtbl
}
ID3D11Query1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Query1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Query1) -> ULONG,
    Release : proc(This: ^ID3D11Query1) -> ULONG,
    GetDevice : proc(This: ^ID3D11Query1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Query1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Query1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Query1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDataSize : proc(This: ^ID3D11Query1) -> UINT,
    GetDesc : proc(This: ^ID3D11Query1, pDesc: ^D3D11_QUERY_DESC),
    GetDesc1 : proc(This: ^ID3D11Query1, pDesc1: ^D3D11_QUERY_DESC1),
}
ID3D11DeviceContext3 :: struct {
    using vtbl: ^ID3D11DeviceContext3Vtbl
}
ID3D11DeviceContext3Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DeviceContext3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DeviceContext3) -> ULONG,
    Release : proc(This: ^ID3D11DeviceContext3) -> ULONG,
    GetDevice : proc(This: ^ID3D11DeviceContext3, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DeviceContext3, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DeviceContext3, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DeviceContext3, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    VSSetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSSetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSSetShader : proc(This: ^ID3D11DeviceContext3, pPixelShader: ^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    PSSetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSSetShader : proc(This: ^ID3D11DeviceContext3, pVertexShader: ^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DrawIndexed : proc(This: ^ID3D11DeviceContext3, IndexCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT),
    Draw : proc(This: ^ID3D11DeviceContext3, VertexCount: UINT, StartVertexLocation: UINT),
    Map : proc(This: ^ID3D11DeviceContext3, pResource: ^ID3D11Resource, Subresource: UINT, MapType: D3D11_MAP, MapFlags: UINT, pMappedResource: ^D3D11_MAPPED_SUBRESOURCE) -> HRESULT,
    Unmap : proc(This: ^ID3D11DeviceContext3, pResource: ^ID3D11Resource, Subresource: UINT),
    PSSetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IASetInputLayout : proc(This: ^ID3D11DeviceContext3, pInputLayout: ^ID3D11InputLayout),
    IASetVertexBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IASetIndexBuffer : proc(This: ^ID3D11DeviceContext3, pIndexBuffer: ^ID3D11Buffer, Format: DXGI_FORMAT, Offset: UINT),
    DrawIndexedInstanced : proc(This: ^ID3D11DeviceContext3, IndexCountPerInstance: UINT, InstanceCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT, StartInstanceLocation: UINT),
    DrawInstanced : proc(This: ^ID3D11DeviceContext3, VertexCountPerInstance: UINT, InstanceCount: UINT, StartVertexLocation: UINT, StartInstanceLocation: UINT),
    GSSetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSSetShader : proc(This: ^ID3D11DeviceContext3, pShader: ^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    IASetPrimitiveTopology : proc(This: ^ID3D11DeviceContext3, Topology: D3D11_PRIMITIVE_TOPOLOGY),
    VSSetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSSetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    Begin : proc(This: ^ID3D11DeviceContext3, pAsync: ^ID3D11Asynchronous),
    End : proc(This: ^ID3D11DeviceContext3, pAsync: ^ID3D11Asynchronous),
    GetData : proc(This: ^ID3D11DeviceContext3, pAsync: ^ID3D11Asynchronous, pData: rawptr, DataSize: UINT, GetDataFlags: UINT) -> HRESULT,
    SetPredication : proc(This: ^ID3D11DeviceContext3, pPredicate: ^ID3D11Predicate, PredicateValue: BOOL),
    GSSetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSSetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMSetRenderTargets : proc(This: ^ID3D11DeviceContext3, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView),
    OMSetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext3, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    OMSetBlendState : proc(This: ^ID3D11DeviceContext3, pBlendState: ^ID3D11BlendState, BlendFactor: [4]FLOAT, SampleMask: UINT),
    OMSetDepthStencilState : proc(This: ^ID3D11DeviceContext3, pDepthStencilState: ^ID3D11DepthStencilState, StencilRef: UINT),
    SOSetTargets : proc(This: ^ID3D11DeviceContext3, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer, pOffsets: ^UINT),
    DrawAuto : proc(This: ^ID3D11DeviceContext3),
    DrawIndexedInstancedIndirect : proc(This: ^ID3D11DeviceContext3, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    DrawInstancedIndirect : proc(This: ^ID3D11DeviceContext3, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    Dispatch : proc(This: ^ID3D11DeviceContext3, ThreadGroupCountX: UINT, ThreadGroupCountY: UINT, ThreadGroupCountZ: UINT),
    DispatchIndirect : proc(This: ^ID3D11DeviceContext3, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    RSSetState : proc(This: ^ID3D11DeviceContext3, pRasterizerState: ^ID3D11RasterizerState),
    RSSetViewports : proc(This: ^ID3D11DeviceContext3, NumViewports: UINT, pViewports: ^D3D11_VIEWPORT),
    RSSetScissorRects : proc(This: ^ID3D11DeviceContext3, NumRects: UINT, pRects: ^D3D11_RECT),
    CopySubresourceRegion : proc(This: ^ID3D11DeviceContext3, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX),
    CopyResource : proc(This: ^ID3D11DeviceContext3, pDstResource: ^ID3D11Resource, pSrcResource: ^ID3D11Resource),
    UpdateSubresource : proc(This: ^ID3D11DeviceContext3, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT),
    CopyStructureCount : proc(This: ^ID3D11DeviceContext3, pDstBuffer: ^ID3D11Buffer, DstAlignedByteOffset: UINT, pSrcView: ^ID3D11UnorderedAccessView),
    ClearRenderTargetView : proc(This: ^ID3D11DeviceContext3, pRenderTargetView: ^ID3D11RenderTargetView, ColorRGBA: [4]FLOAT),
    ClearUnorderedAccessViewUint : proc(This: ^ID3D11DeviceContext3, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]UINT),
    ClearUnorderedAccessViewFloat : proc(This: ^ID3D11DeviceContext3, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]FLOAT),
    ClearDepthStencilView : proc(This: ^ID3D11DeviceContext3, pDepthStencilView: ^ID3D11DepthStencilView, ClearFlags: UINT, Depth: FLOAT, Stencil: UINT8),
    GenerateMips : proc(This: ^ID3D11DeviceContext3, pShaderResourceView: ^ID3D11ShaderResourceView),
    SetResourceMinLOD : proc(This: ^ID3D11DeviceContext3, pResource: ^ID3D11Resource, MinLOD: FLOAT),
    GetResourceMinLOD : proc(This: ^ID3D11DeviceContext3, pResource: ^ID3D11Resource) -> FLOAT,
    ResolveSubresource : proc(This: ^ID3D11DeviceContext3, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, Format: DXGI_FORMAT),
    ExecuteCommandList : proc(This: ^ID3D11DeviceContext3, pCommandList: ^ID3D11CommandList, RestoreContextState: BOOL),
    HSSetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSSetShader : proc(This: ^ID3D11DeviceContext3, pHullShader: ^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    HSSetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSSetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSSetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSSetShader : proc(This: ^ID3D11DeviceContext3, pDomainShader: ^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DSSetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSSetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSSetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSSetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    CSSetShader : proc(This: ^ID3D11DeviceContext3, pComputeShader: ^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    CSSetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSSetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    VSGetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSGetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSGetShader : proc(This: ^ID3D11DeviceContext3, ppPixelShader: ^^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSGetShader : proc(This: ^ID3D11DeviceContext3, ppVertexShader: ^^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IAGetInputLayout : proc(This: ^ID3D11DeviceContext3, ppInputLayout: ^^ID3D11InputLayout),
    IAGetVertexBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IAGetIndexBuffer : proc(This: ^ID3D11DeviceContext3, pIndexBuffer: ^^ID3D11Buffer, Format: ^DXGI_FORMAT, Offset: ^UINT),
    GSGetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSGetShader : proc(This: ^ID3D11DeviceContext3, ppGeometryShader: ^^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    IAGetPrimitiveTopology : proc(This: ^ID3D11DeviceContext3, pTopology: ^D3D11_PRIMITIVE_TOPOLOGY),
    VSGetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSGetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    GetPredication : proc(This: ^ID3D11DeviceContext3, ppPredicate: ^^ID3D11Predicate, pPredicateValue: ^BOOL),
    GSGetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSGetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMGetRenderTargets : proc(This: ^ID3D11DeviceContext3, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView),
    OMGetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext3, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    OMGetBlendState : proc(This: ^ID3D11DeviceContext3, ppBlendState: ^^ID3D11BlendState, BlendFactor: [4]FLOAT, pSampleMask: ^UINT),
    OMGetDepthStencilState : proc(This: ^ID3D11DeviceContext3, ppDepthStencilState: ^^ID3D11DepthStencilState, pStencilRef: ^UINT),
    SOGetTargets : proc(This: ^ID3D11DeviceContext3, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer),
    RSGetState : proc(This: ^ID3D11DeviceContext3, ppRasterizerState: ^^ID3D11RasterizerState),
    RSGetViewports : proc(This: ^ID3D11DeviceContext3, pNumViewports: ^UINT, pViewports: ^D3D11_VIEWPORT),
    RSGetScissorRects : proc(This: ^ID3D11DeviceContext3, pNumRects: ^UINT, pRects: ^D3D11_RECT),
    HSGetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSGetShader : proc(This: ^ID3D11DeviceContext3, ppHullShader: ^^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    HSGetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSGetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSGetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSGetShader : proc(This: ^ID3D11DeviceContext3, ppDomainShader: ^^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    DSGetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSGetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSGetShaderResources : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSGetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    CSGetShader : proc(This: ^ID3D11DeviceContext3, ppComputeShader: ^^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    CSGetSamplers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSGetConstantBuffers : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    ClearState : proc(This: ^ID3D11DeviceContext3),
    Flush : proc(This: ^ID3D11DeviceContext3),
    GetType : proc(This: ^ID3D11DeviceContext3) -> D3D11_DEVICE_CONTEXT_TYPE,
    GetContextFlags : proc(This: ^ID3D11DeviceContext3) -> UINT,
    FinishCommandList : proc(This: ^ID3D11DeviceContext3, RestoreDeferredContextState: BOOL, ppCommandList: ^^ID3D11CommandList) -> HRESULT,
    CopySubresourceRegion1 : proc(This: ^ID3D11DeviceContext3, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX, CopyFlags: UINT),
    UpdateSubresource1 : proc(This: ^ID3D11DeviceContext3, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT, CopyFlags: UINT),
    DiscardResource : proc(This: ^ID3D11DeviceContext3, pResource: ^ID3D11Resource),
    DiscardView : proc(This: ^ID3D11DeviceContext3, pResourceView: ^ID3D11View),
    VSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    VSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext3, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    SwapDeviceContextState : proc(This: ^ID3D11DeviceContext3, pState: ^ID3DDeviceContextState, ppPreviousState: ^^ID3DDeviceContextState),
    ClearView : proc(This: ^ID3D11DeviceContext3, pView: ^ID3D11View, Color: [4]FLOAT, pRect: ^D3D11_RECT, NumRects: UINT),
    DiscardView1 : proc(This: ^ID3D11DeviceContext3, pResourceView: ^ID3D11View, pRects: ^D3D11_RECT, NumRects: UINT),
    UpdateTileMappings : proc(This: ^ID3D11DeviceContext3, pTiledResource: ^ID3D11Resource, NumTiledResourceRegions: UINT, pTiledResourceRegionStartCoordinates: ^D3D11_TILED_RESOURCE_COORDINATE, pTiledResourceRegionSizes: ^D3D11_TILE_REGION_SIZE, pTilePool: ^ID3D11Buffer, NumRanges: UINT, pRangeFlags: ^UINT, pTilePoolStartOffsets: ^UINT, pRangeTileCounts: ^UINT, Flags: UINT) -> HRESULT,
    CopyTileMappings : proc(This: ^ID3D11DeviceContext3, pDestTiledResource: ^ID3D11Resource, pDestRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pSourceTiledResource: ^ID3D11Resource, pSourceRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pTileRegionSize: ^D3D11_TILE_REGION_SIZE, Flags: UINT) -> HRESULT,
    CopyTiles : proc(This: ^ID3D11DeviceContext3, pTiledResource: ^ID3D11Resource, pTileRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pTileRegionSize: ^D3D11_TILE_REGION_SIZE, pBuffer: ^ID3D11Buffer, BufferStartOffsetInBytes: UINT64, Flags: UINT),
    UpdateTiles : proc(This: ^ID3D11DeviceContext3, pDestTiledResource: ^ID3D11Resource, pDestTileRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pDestTileRegionSize: ^D3D11_TILE_REGION_SIZE, pSourceTileData: rawptr, Flags: UINT),
    ResizeTilePool : proc(This: ^ID3D11DeviceContext3, pTilePool: ^ID3D11Buffer, NewSizeInBytes: UINT64) -> HRESULT,
    TiledResourceBarrier : proc(This: ^ID3D11DeviceContext3, pTiledResourceOrViewAccessBeforeBarrier: ^ID3D11DeviceChild, pTiledResourceOrViewAccessAfterBarrier: ^ID3D11DeviceChild),
    IsAnnotationEnabled : proc(This: ^ID3D11DeviceContext3) -> BOOL,
    SetMarkerInt : proc(This: ^ID3D11DeviceContext3, pLabel: LPCWSTR, Data: INT),
    BeginEventInt : proc(This: ^ID3D11DeviceContext3, pLabel: LPCWSTR, Data: INT),
    EndEvent : proc(This: ^ID3D11DeviceContext3),
    Flush1 : proc(This: ^ID3D11DeviceContext3, ContextType: UINT, hEvent: HANDLE),
    SetHardwareProtectionState : proc(This: ^ID3D11DeviceContext3, HwProtectionEnable: BOOL),
    GetHardwareProtectionState : proc(This: ^ID3D11DeviceContext3, pHwProtectionEnable: ^BOOL),
}
ID3D11Fence :: struct {
    using vtbl: ^ID3D11FenceVtbl
}
ID3D11FenceVtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Fence, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Fence) -> ULONG,
    Release : proc(This: ^ID3D11Fence) -> ULONG,
    GetDevice : proc(This: ^ID3D11Fence, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11Fence, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Fence, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Fence, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    CreateSharedHandle : proc(This: ^ID3D11Fence, pAttributes: ^SECURITY_ATTRIBUTES, dwAccess: DWORD, lpName: LPCWSTR, pHandle: ^HANDLE) -> HRESULT,
    GetCompletedValue : proc(This: ^ID3D11Fence) -> UINT64,
    SetEventOnCompletion : proc(This: ^ID3D11Fence, Value: UINT64, hEvent: HANDLE) -> HRESULT,
}
ID3D11DeviceContext4 :: struct {
    using vtbl: ^ID3D11DeviceContext4Vtbl
}
ID3D11DeviceContext4Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DeviceContext4, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DeviceContext4) -> ULONG,
    Release : proc(This: ^ID3D11DeviceContext4) -> ULONG,
    GetDevice : proc(This: ^ID3D11DeviceContext4, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DeviceContext4, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DeviceContext4, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DeviceContext4, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    VSSetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSSetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSSetShader : proc(This: ^ID3D11DeviceContext4, pPixelShader: ^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    PSSetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSSetShader : proc(This: ^ID3D11DeviceContext4, pVertexShader: ^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DrawIndexed : proc(This: ^ID3D11DeviceContext4, IndexCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT),
    Draw : proc(This: ^ID3D11DeviceContext4, VertexCount: UINT, StartVertexLocation: UINT),
    Map : proc(This: ^ID3D11DeviceContext4, pResource: ^ID3D11Resource, Subresource: UINT, MapType: D3D11_MAP, MapFlags: UINT, pMappedResource: ^D3D11_MAPPED_SUBRESOURCE) -> HRESULT,
    Unmap : proc(This: ^ID3D11DeviceContext4, pResource: ^ID3D11Resource, Subresource: UINT),
    PSSetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IASetInputLayout : proc(This: ^ID3D11DeviceContext4, pInputLayout: ^ID3D11InputLayout),
    IASetVertexBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IASetIndexBuffer : proc(This: ^ID3D11DeviceContext4, pIndexBuffer: ^ID3D11Buffer, Format: DXGI_FORMAT, Offset: UINT),
    DrawIndexedInstanced : proc(This: ^ID3D11DeviceContext4, IndexCountPerInstance: UINT, InstanceCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT, StartInstanceLocation: UINT),
    DrawInstanced : proc(This: ^ID3D11DeviceContext4, VertexCountPerInstance: UINT, InstanceCount: UINT, StartVertexLocation: UINT, StartInstanceLocation: UINT),
    GSSetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSSetShader : proc(This: ^ID3D11DeviceContext4, pShader: ^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    IASetPrimitiveTopology : proc(This: ^ID3D11DeviceContext4, Topology: D3D11_PRIMITIVE_TOPOLOGY),
    VSSetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSSetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    Begin : proc(This: ^ID3D11DeviceContext4, pAsync: ^ID3D11Asynchronous),
    End : proc(This: ^ID3D11DeviceContext4, pAsync: ^ID3D11Asynchronous),
    GetData : proc(This: ^ID3D11DeviceContext4, pAsync: ^ID3D11Asynchronous, pData: rawptr, DataSize: UINT, GetDataFlags: UINT) -> HRESULT,
    SetPredication : proc(This: ^ID3D11DeviceContext4, pPredicate: ^ID3D11Predicate, PredicateValue: BOOL),
    GSSetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSSetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMSetRenderTargets : proc(This: ^ID3D11DeviceContext4, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView),
    OMSetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext4, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    OMSetBlendState : proc(This: ^ID3D11DeviceContext4, pBlendState: ^ID3D11BlendState, BlendFactor: [4]FLOAT, SampleMask: UINT),
    OMSetDepthStencilState : proc(This: ^ID3D11DeviceContext4, pDepthStencilState: ^ID3D11DepthStencilState, StencilRef: UINT),
    SOSetTargets : proc(This: ^ID3D11DeviceContext4, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer, pOffsets: ^UINT),
    DrawAuto : proc(This: ^ID3D11DeviceContext4),
    DrawIndexedInstancedIndirect : proc(This: ^ID3D11DeviceContext4, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    DrawInstancedIndirect : proc(This: ^ID3D11DeviceContext4, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    Dispatch : proc(This: ^ID3D11DeviceContext4, ThreadGroupCountX: UINT, ThreadGroupCountY: UINT, ThreadGroupCountZ: UINT),
    DispatchIndirect : proc(This: ^ID3D11DeviceContext4, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    RSSetState : proc(This: ^ID3D11DeviceContext4, pRasterizerState: ^ID3D11RasterizerState),
    RSSetViewports : proc(This: ^ID3D11DeviceContext4, NumViewports: UINT, pViewports: ^D3D11_VIEWPORT),
    RSSetScissorRects : proc(This: ^ID3D11DeviceContext4, NumRects: UINT, pRects: ^D3D11_RECT),
    CopySubresourceRegion : proc(This: ^ID3D11DeviceContext4, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX),
    CopyResource : proc(This: ^ID3D11DeviceContext4, pDstResource: ^ID3D11Resource, pSrcResource: ^ID3D11Resource),
    UpdateSubresource : proc(This: ^ID3D11DeviceContext4, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT),
    CopyStructureCount : proc(This: ^ID3D11DeviceContext4, pDstBuffer: ^ID3D11Buffer, DstAlignedByteOffset: UINT, pSrcView: ^ID3D11UnorderedAccessView),
    ClearRenderTargetView : proc(This: ^ID3D11DeviceContext4, pRenderTargetView: ^ID3D11RenderTargetView, ColorRGBA: [4]FLOAT),
    ClearUnorderedAccessViewUint : proc(This: ^ID3D11DeviceContext4, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]UINT),
    ClearUnorderedAccessViewFloat : proc(This: ^ID3D11DeviceContext4, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]FLOAT),
    ClearDepthStencilView : proc(This: ^ID3D11DeviceContext4, pDepthStencilView: ^ID3D11DepthStencilView, ClearFlags: UINT, Depth: FLOAT, Stencil: UINT8),
    GenerateMips : proc(This: ^ID3D11DeviceContext4, pShaderResourceView: ^ID3D11ShaderResourceView),
    SetResourceMinLOD : proc(This: ^ID3D11DeviceContext4, pResource: ^ID3D11Resource, MinLOD: FLOAT),
    GetResourceMinLOD : proc(This: ^ID3D11DeviceContext4, pResource: ^ID3D11Resource) -> FLOAT,
    ResolveSubresource : proc(This: ^ID3D11DeviceContext4, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, Format: DXGI_FORMAT),
    ExecuteCommandList : proc(This: ^ID3D11DeviceContext4, pCommandList: ^ID3D11CommandList, RestoreContextState: BOOL),
    HSSetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSSetShader : proc(This: ^ID3D11DeviceContext4, pHullShader: ^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    HSSetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSSetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSSetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSSetShader : proc(This: ^ID3D11DeviceContext4, pDomainShader: ^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DSSetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSSetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSSetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSSetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    CSSetShader : proc(This: ^ID3D11DeviceContext4, pComputeShader: ^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    CSSetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSSetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    VSGetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSGetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSGetShader : proc(This: ^ID3D11DeviceContext4, ppPixelShader: ^^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSGetShader : proc(This: ^ID3D11DeviceContext4, ppVertexShader: ^^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IAGetInputLayout : proc(This: ^ID3D11DeviceContext4, ppInputLayout: ^^ID3D11InputLayout),
    IAGetVertexBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IAGetIndexBuffer : proc(This: ^ID3D11DeviceContext4, pIndexBuffer: ^^ID3D11Buffer, Format: ^DXGI_FORMAT, Offset: ^UINT),
    GSGetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSGetShader : proc(This: ^ID3D11DeviceContext4, ppGeometryShader: ^^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    IAGetPrimitiveTopology : proc(This: ^ID3D11DeviceContext4, pTopology: ^D3D11_PRIMITIVE_TOPOLOGY),
    VSGetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSGetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    GetPredication : proc(This: ^ID3D11DeviceContext4, ppPredicate: ^^ID3D11Predicate, pPredicateValue: ^BOOL),
    GSGetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSGetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMGetRenderTargets : proc(This: ^ID3D11DeviceContext4, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView),
    OMGetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext4, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    OMGetBlendState : proc(This: ^ID3D11DeviceContext4, ppBlendState: ^^ID3D11BlendState, BlendFactor: [4]FLOAT, pSampleMask: ^UINT),
    OMGetDepthStencilState : proc(This: ^ID3D11DeviceContext4, ppDepthStencilState: ^^ID3D11DepthStencilState, pStencilRef: ^UINT),
    SOGetTargets : proc(This: ^ID3D11DeviceContext4, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer),
    RSGetState : proc(This: ^ID3D11DeviceContext4, ppRasterizerState: ^^ID3D11RasterizerState),
    RSGetViewports : proc(This: ^ID3D11DeviceContext4, pNumViewports: ^UINT, pViewports: ^D3D11_VIEWPORT),
    RSGetScissorRects : proc(This: ^ID3D11DeviceContext4, pNumRects: ^UINT, pRects: ^D3D11_RECT),
    HSGetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSGetShader : proc(This: ^ID3D11DeviceContext4, ppHullShader: ^^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    HSGetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSGetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSGetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSGetShader : proc(This: ^ID3D11DeviceContext4, ppDomainShader: ^^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    DSGetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSGetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSGetShaderResources : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSGetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    CSGetShader : proc(This: ^ID3D11DeviceContext4, ppComputeShader: ^^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    CSGetSamplers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSGetConstantBuffers : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    ClearState : proc(This: ^ID3D11DeviceContext4),
    Flush : proc(This: ^ID3D11DeviceContext4),
    GetType : proc(This: ^ID3D11DeviceContext4) -> D3D11_DEVICE_CONTEXT_TYPE,
    GetContextFlags : proc(This: ^ID3D11DeviceContext4) -> UINT,
    FinishCommandList : proc(This: ^ID3D11DeviceContext4, RestoreDeferredContextState: BOOL, ppCommandList: ^^ID3D11CommandList) -> HRESULT,
    CopySubresourceRegion1 : proc(This: ^ID3D11DeviceContext4, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX, CopyFlags: UINT),
    UpdateSubresource1 : proc(This: ^ID3D11DeviceContext4, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT, CopyFlags: UINT),
    DiscardResource : proc(This: ^ID3D11DeviceContext4, pResource: ^ID3D11Resource),
    DiscardView : proc(This: ^ID3D11DeviceContext4, pResourceView: ^ID3D11View),
    VSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    VSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext4, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    SwapDeviceContextState : proc(This: ^ID3D11DeviceContext4, pState: ^ID3DDeviceContextState, ppPreviousState: ^^ID3DDeviceContextState),
    ClearView : proc(This: ^ID3D11DeviceContext4, pView: ^ID3D11View, Color: [4]FLOAT, pRect: ^D3D11_RECT, NumRects: UINT),
    DiscardView1 : proc(This: ^ID3D11DeviceContext4, pResourceView: ^ID3D11View, pRects: ^D3D11_RECT, NumRects: UINT),
    UpdateTileMappings : proc(This: ^ID3D11DeviceContext4, pTiledResource: ^ID3D11Resource, NumTiledResourceRegions: UINT, pTiledResourceRegionStartCoordinates: ^D3D11_TILED_RESOURCE_COORDINATE, pTiledResourceRegionSizes: ^D3D11_TILE_REGION_SIZE, pTilePool: ^ID3D11Buffer, NumRanges: UINT, pRangeFlags: ^UINT, pTilePoolStartOffsets: ^UINT, pRangeTileCounts: ^UINT, Flags: UINT) -> HRESULT,
    CopyTileMappings : proc(This: ^ID3D11DeviceContext4, pDestTiledResource: ^ID3D11Resource, pDestRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pSourceTiledResource: ^ID3D11Resource, pSourceRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pTileRegionSize: ^D3D11_TILE_REGION_SIZE, Flags: UINT) -> HRESULT,
    CopyTiles : proc(This: ^ID3D11DeviceContext4, pTiledResource: ^ID3D11Resource, pTileRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pTileRegionSize: ^D3D11_TILE_REGION_SIZE, pBuffer: ^ID3D11Buffer, BufferStartOffsetInBytes: UINT64, Flags: UINT),
    UpdateTiles : proc(This: ^ID3D11DeviceContext4, pDestTiledResource: ^ID3D11Resource, pDestTileRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pDestTileRegionSize: ^D3D11_TILE_REGION_SIZE, pSourceTileData: rawptr, Flags: UINT),
    ResizeTilePool : proc(This: ^ID3D11DeviceContext4, pTilePool: ^ID3D11Buffer, NewSizeInBytes: UINT64) -> HRESULT,
    TiledResourceBarrier : proc(This: ^ID3D11DeviceContext4, pTiledResourceOrViewAccessBeforeBarrier: ^ID3D11DeviceChild, pTiledResourceOrViewAccessAfterBarrier: ^ID3D11DeviceChild),
    IsAnnotationEnabled : proc(This: ^ID3D11DeviceContext4) -> BOOL,
    SetMarkerInt : proc(This: ^ID3D11DeviceContext4, pLabel: LPCWSTR, Data: INT),
    BeginEventInt : proc(This: ^ID3D11DeviceContext4, pLabel: LPCWSTR, Data: INT),
    EndEvent : proc(This: ^ID3D11DeviceContext4),
    Flush1 : proc(This: ^ID3D11DeviceContext4, ContextType: UINT, hEvent: HANDLE),
    SetHardwareProtectionState : proc(This: ^ID3D11DeviceContext4, HwProtectionEnable: BOOL),
    GetHardwareProtectionState : proc(This: ^ID3D11DeviceContext4, pHwProtectionEnable: ^BOOL),
    Signal : proc(This: ^ID3D11DeviceContext4, pFence: ^ID3D11Fence, Value: UINT64) -> HRESULT,
    Wait : proc(This: ^ID3D11DeviceContext4, pFence: ^ID3D11Fence, Value: UINT64) -> HRESULT,
}
ID3D11Device3 :: struct {
    using vtbl: ^ID3D11Device3Vtbl
}
ID3D11Device3Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Device3, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Device3) -> ULONG,
    Release : proc(This: ^ID3D11Device3) -> ULONG,
    CreateBuffer : proc(This: ^ID3D11Device3, pDesc: ^D3D11_BUFFER_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppBuffer: ^^ID3D11Buffer) -> HRESULT,
    CreateTexture1D : proc(This: ^ID3D11Device3, pDesc: ^D3D11_TEXTURE1D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture1D: ^^ID3D11Texture1D) -> HRESULT,
    CreateTexture2D : proc(This: ^ID3D11Device3, pDesc: ^D3D11_TEXTURE2D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture2D: ^^ID3D11Texture2D) -> HRESULT,
    CreateTexture3D : proc(This: ^ID3D11Device3, pDesc: ^D3D11_TEXTURE3D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture3D: ^^ID3D11Texture3D) -> HRESULT,
    CreateShaderResourceView : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc: ^D3D11_SHADER_RESOURCE_VIEW_DESC, ppSRView: ^^ID3D11ShaderResourceView) -> HRESULT,
    CreateUnorderedAccessView : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc: ^D3D11_UNORDERED_ACCESS_VIEW_DESC, ppUAView: ^^ID3D11UnorderedAccessView) -> HRESULT,
    CreateRenderTargetView : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc: ^D3D11_RENDER_TARGET_VIEW_DESC, ppRTView: ^^ID3D11RenderTargetView) -> HRESULT,
    CreateDepthStencilView : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc: ^D3D11_DEPTH_STENCIL_VIEW_DESC, ppDepthStencilView: ^^ID3D11DepthStencilView) -> HRESULT,
    CreateInputLayout : proc(This: ^ID3D11Device3, pInputElementDescs: ^D3D11_INPUT_ELEMENT_DESC, NumElements: UINT, pShaderBytecodeWithInputSignature: rawptr, BytecodeLength: SIZE_T, ppInputLayout: ^^ID3D11InputLayout) -> HRESULT,
    CreateVertexShader : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppVertexShader: ^^ID3D11VertexShader) -> HRESULT,
    CreateGeometryShader : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreateGeometryShaderWithStreamOutput : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pSODeclaration: ^D3D11_SO_DECLARATION_ENTRY, NumEntries: UINT, pBufferStrides: ^UINT, NumStrides: UINT, RasterizedStream: UINT, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreatePixelShader : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppPixelShader: ^^ID3D11PixelShader) -> HRESULT,
    CreateHullShader : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppHullShader: ^^ID3D11HullShader) -> HRESULT,
    CreateDomainShader : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppDomainShader: ^^ID3D11DomainShader) -> HRESULT,
    CreateComputeShader : proc(This: ^ID3D11Device3, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppComputeShader: ^^ID3D11ComputeShader) -> HRESULT,
    CreateClassLinkage : proc(This: ^ID3D11Device3, ppLinkage: ^^ID3D11ClassLinkage) -> HRESULT,
    CreateBlendState : proc(This: ^ID3D11Device3, pBlendStateDesc: ^D3D11_BLEND_DESC, ppBlendState: ^^ID3D11BlendState) -> HRESULT,
    CreateDepthStencilState : proc(This: ^ID3D11Device3, pDepthStencilDesc: ^D3D11_DEPTH_STENCIL_DESC, ppDepthStencilState: ^^ID3D11DepthStencilState) -> HRESULT,
    CreateRasterizerState : proc(This: ^ID3D11Device3, pRasterizerDesc: ^D3D11_RASTERIZER_DESC, ppRasterizerState: ^^ID3D11RasterizerState) -> HRESULT,
    CreateSamplerState : proc(This: ^ID3D11Device3, pSamplerDesc: ^D3D11_SAMPLER_DESC, ppSamplerState: ^^ID3D11SamplerState) -> HRESULT,
    CreateQuery : proc(This: ^ID3D11Device3, pQueryDesc: ^D3D11_QUERY_DESC, ppQuery: ^^ID3D11Query) -> HRESULT,
    CreatePredicate : proc(This: ^ID3D11Device3, pPredicateDesc: ^D3D11_QUERY_DESC, ppPredicate: ^^ID3D11Predicate) -> HRESULT,
    CreateCounter : proc(This: ^ID3D11Device3, pCounterDesc: ^D3D11_COUNTER_DESC, ppCounter: ^^ID3D11Counter) -> HRESULT,
    CreateDeferredContext : proc(This: ^ID3D11Device3, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext) -> HRESULT,
    OpenSharedResource : proc(This: ^ID3D11Device3, hResource: HANDLE, ReturnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    CheckFormatSupport : proc(This: ^ID3D11Device3, Format: DXGI_FORMAT, pFormatSupport: ^UINT) -> HRESULT,
    CheckMultisampleQualityLevels : proc(This: ^ID3D11Device3, Format: DXGI_FORMAT, SampleCount: UINT, pNumQualityLevels: ^UINT) -> HRESULT,
    CheckCounterInfo : proc(This: ^ID3D11Device3, pCounterInfo: ^D3D11_COUNTER_INFO),
    CheckCounter : proc(This: ^ID3D11Device3, pDesc: ^D3D11_COUNTER_DESC, pType: ^D3D11_COUNTER_TYPE, pActiveCounters: ^UINT, szName: LPSTR, pNameLength: ^UINT, szUnits: LPSTR, pUnitsLength: ^UINT, szDescription: LPSTR, pDescriptionLength: ^UINT) -> HRESULT,
    CheckFeatureSupport : proc(This: ^ID3D11Device3, Feature: D3D11_FEATURE, pFeatureSupportData: rawptr, FeatureSupportDataSize: UINT) -> HRESULT,
    GetPrivateData : proc(This: ^ID3D11Device3, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Device3, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Device3, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetFeatureLevel : proc(This: ^ID3D11Device3) -> D3D_FEATURE_LEVEL,
    GetCreationFlags : proc(This: ^ID3D11Device3) -> UINT,
    GetDeviceRemovedReason : proc(This: ^ID3D11Device3) -> HRESULT,
    GetImmediateContext : proc(This: ^ID3D11Device3, ppImmediateContext: ^^ID3D11DeviceContext),
    SetExceptionMode : proc(This: ^ID3D11Device3, RaiseFlags: UINT) -> HRESULT,
    GetExceptionMode : proc(This: ^ID3D11Device3) -> UINT,
    GetImmediateContext1 : proc(This: ^ID3D11Device3, ppImmediateContext: ^^ID3D11DeviceContext1),
    CreateDeferredContext1 : proc(This: ^ID3D11Device3, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext1) -> HRESULT,
    CreateBlendState1 : proc(This: ^ID3D11Device3, pBlendStateDesc: ^D3D11_BLEND_DESC1, ppBlendState: ^^ID3D11BlendState1) -> HRESULT,
    CreateRasterizerState1 : proc(This: ^ID3D11Device3, pRasterizerDesc: ^D3D11_RASTERIZER_DESC1, ppRasterizerState: ^^ID3D11RasterizerState1) -> HRESULT,
    CreateDeviceContextState : proc(This: ^ID3D11Device3, Flags: UINT, pFeatureLevels: ^D3D_FEATURE_LEVEL, FeatureLevels: UINT, SDKVersion: UINT, EmulatedInterface: REFIID, pChosenFeatureLevel: ^D3D_FEATURE_LEVEL, ppContextState: ^^ID3DDeviceContextState) -> HRESULT,
    OpenSharedResource1 : proc(This: ^ID3D11Device3, hResource: HANDLE, returnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    OpenSharedResourceByName : proc(This: ^ID3D11Device3, lpName: LPCWSTR, dwDesiredAccess: DWORD, returnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    GetImmediateContext2 : proc(This: ^ID3D11Device3, ppImmediateContext: ^^ID3D11DeviceContext2),
    CreateDeferredContext2 : proc(This: ^ID3D11Device3, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext2) -> HRESULT,
    GetResourceTiling : proc(This: ^ID3D11Device3, pTiledResource: ^ID3D11Resource, pNumTilesForEntireResource: ^UINT, pPackedMipDesc: ^D3D11_PACKED_MIP_DESC, pStandardTileShapeForNonPackedMips: ^D3D11_TILE_SHAPE, pNumSubresourceTilings: ^UINT, FirstSubresourceTilingToGet: UINT, pSubresourceTilingsForNonPackedMips: ^D3D11_SUBRESOURCE_TILING),
    CheckMultisampleQualityLevels1 : proc(This: ^ID3D11Device3, Format: DXGI_FORMAT, SampleCount: UINT, Flags: UINT, pNumQualityLevels: ^UINT) -> HRESULT,
    CreateTexture2D1 : proc(This: ^ID3D11Device3, pDesc1: ^D3D11_TEXTURE2D_DESC1, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture2D: ^^ID3D11Texture2D1) -> HRESULT,
    CreateTexture3D1 : proc(This: ^ID3D11Device3, pDesc1: ^D3D11_TEXTURE3D_DESC1, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture3D: ^^ID3D11Texture3D1) -> HRESULT,
    CreateRasterizerState2 : proc(This: ^ID3D11Device3, pRasterizerDesc: ^D3D11_RASTERIZER_DESC2, ppRasterizerState: ^^ID3D11RasterizerState2) -> HRESULT,
    CreateShaderResourceView1 : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc1: ^D3D11_SHADER_RESOURCE_VIEW_DESC1, ppSRView1: ^^ID3D11ShaderResourceView1) -> HRESULT,
    CreateUnorderedAccessView1 : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc1: ^D3D11_UNORDERED_ACCESS_VIEW_DESC1, ppUAView1: ^^ID3D11UnorderedAccessView1) -> HRESULT,
    CreateRenderTargetView1 : proc(This: ^ID3D11Device3, pResource: ^ID3D11Resource, pDesc1: ^D3D11_RENDER_TARGET_VIEW_DESC1, ppRTView1: ^^ID3D11RenderTargetView1) -> HRESULT,
    CreateQuery1 : proc(This: ^ID3D11Device3, pQueryDesc1: ^D3D11_QUERY_DESC1, ppQuery1: ^^ID3D11Query1) -> HRESULT,
    GetImmediateContext3 : proc(This: ^ID3D11Device3, ppImmediateContext: ^^ID3D11DeviceContext3),
    CreateDeferredContext3 : proc(This: ^ID3D11Device3, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext3) -> HRESULT,
    WriteToSubresource : proc(This: ^ID3D11Device3, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT),
    ReadFromSubresource : proc(This: ^ID3D11Device3, pDstData: rawptr, DstRowPitch: UINT, DstDepthPitch: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX),
}
//D3D11_CONTEXT_TYPE
D3D11_CONTEXT_TYPE_ALL : u32 =  0;
D3D11_CONTEXT_TYPE_3D : u32 =  1;
D3D11_CONTEXT_TYPE_COMPUTE : u32 =  2;
D3D11_CONTEXT_TYPE_COPY : u32 =  3;
D3D11_CONTEXT_TYPE_VIDEO : u32 =  4
    ;
//D3D11_TEXTURE_LAYOUT
D3D11_TEXTURE_LAYOUT_UNDEFINED : u32 =  0;
D3D11_TEXTURE_LAYOUT_ROW_MAJOR : u32 =  1;
D3D11_TEXTURE_LAYOUT_64K_STANDARD_SWIZZLE : u32 =  2
    ;
//D3D11_CONSERVATIVE_RASTERIZATION_MODE
D3D11_CONSERVATIVE_RASTERIZATION_MODE_OFF : u32 =  0;
D3D11_CONSERVATIVE_RASTERIZATION_MODE_ON : u32 =  1
    ;
//D3D11_FENCE_FLAG
D3D11_FENCE_FLAG_NONE : u32 =  0;
D3D11_FENCE_FLAG_SHARED : u32 =  0x2;
D3D11_FENCE_FLAG_SHARED_CROSS_ADAPTER : u32 =  0x4;
D3D11_FENCE_FLAG_NON_MONITORED : u32 =  0x8
    ;
