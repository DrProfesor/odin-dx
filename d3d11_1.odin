package dx

D3D11_RENDER_TARGET_BLEND_DESC1 :: struct {
    BlendEnable: BOOL,
    LogicOpEnable: BOOL,
    SrcBlend: D3D11_BLEND,
    DestBlend: D3D11_BLEND,
    BlendOp: D3D11_BLEND_OP,
    SrcBlendAlpha: D3D11_BLEND,
    DestBlendAlpha: D3D11_BLEND,
    BlendOpAlpha: D3D11_BLEND_OP,
    LogicOp: UINT,
    RenderTargetWriteMask: UINT8,
}
D3D11_BLEND_DESC1 :: struct {
    AlphaToCoverageEnable: BOOL,
    IndependentBlendEnable: BOOL,
    RenderTarget: [8]D3D11_RENDER_TARGET_BLEND_DESC1,
}
ID3D11BlendState1 :: struct {
    using vtbl: ^ID3D11BlendState1Vtbl
}
ID3D11BlendState1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11BlendState1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11BlendState1) -> ULONG,
    Release : proc(This: ^ID3D11BlendState1) -> ULONG,
    GetDevice : proc(This: ^ID3D11BlendState1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11BlendState1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11BlendState1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11BlendState1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11BlendState1, pDesc: ^D3D11_BLEND_DESC),
    GetDesc1 : proc(This: ^ID3D11BlendState1, pDesc: ^D3D11_BLEND_DESC1),
}
D3D11_RASTERIZER_DESC1 :: struct {
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
}
ID3D11RasterizerState1 :: struct {
    using vtbl: ^ID3D11RasterizerState1Vtbl
}
ID3D11RasterizerState1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11RasterizerState1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11RasterizerState1) -> ULONG,
    Release : proc(This: ^ID3D11RasterizerState1) -> ULONG,
    GetDevice : proc(This: ^ID3D11RasterizerState1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11RasterizerState1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11RasterizerState1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11RasterizerState1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDesc : proc(This: ^ID3D11RasterizerState1, pDesc: ^D3D11_RASTERIZER_DESC),
    GetDesc1 : proc(This: ^ID3D11RasterizerState1, pDesc: ^D3D11_RASTERIZER_DESC1),
}
ID3DDeviceContextState :: struct {
    using vtbl: ^ID3DDeviceContextStateVtbl
}
ID3DDeviceContextStateVtbl :: struct {
    QueryInterface : proc(This: ^ID3DDeviceContextState, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3DDeviceContextState) -> ULONG,
    Release : proc(This: ^ID3DDeviceContextState) -> ULONG,
    GetDevice : proc(This: ^ID3DDeviceContextState, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3DDeviceContextState, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3DDeviceContextState, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3DDeviceContextState, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
}
ID3D11DeviceContext1 :: struct {
    using vtbl: ^ID3D11DeviceContext1Vtbl
}
ID3D11DeviceContext1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DeviceContext1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DeviceContext1) -> ULONG,
    Release : proc(This: ^ID3D11DeviceContext1) -> ULONG,
    GetDevice : proc(This: ^ID3D11DeviceContext1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DeviceContext1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DeviceContext1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DeviceContext1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    VSSetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSSetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSSetShader : proc(This: ^ID3D11DeviceContext1, pPixelShader: ^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    PSSetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSSetShader : proc(This: ^ID3D11DeviceContext1, pVertexShader: ^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DrawIndexed : proc(This: ^ID3D11DeviceContext1, IndexCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT),
    Draw : proc(This: ^ID3D11DeviceContext1, VertexCount: UINT, StartVertexLocation: UINT),
    Map : proc(This: ^ID3D11DeviceContext1, pResource: ^ID3D11Resource, Subresource: UINT, MapType: D3D11_MAP, MapFlags: UINT, pMappedResource: ^D3D11_MAPPED_SUBRESOURCE) -> HRESULT,
    Unmap : proc(This: ^ID3D11DeviceContext1, pResource: ^ID3D11Resource, Subresource: UINT),
    PSSetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IASetInputLayout : proc(This: ^ID3D11DeviceContext1, pInputLayout: ^ID3D11InputLayout),
    IASetVertexBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IASetIndexBuffer : proc(This: ^ID3D11DeviceContext1, pIndexBuffer: ^ID3D11Buffer, Format: DXGI_FORMAT, Offset: UINT),
    DrawIndexedInstanced : proc(This: ^ID3D11DeviceContext1, IndexCountPerInstance: UINT, InstanceCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT, StartInstanceLocation: UINT),
    DrawInstanced : proc(This: ^ID3D11DeviceContext1, VertexCountPerInstance: UINT, InstanceCount: UINT, StartVertexLocation: UINT, StartInstanceLocation: UINT),
    GSSetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSSetShader : proc(This: ^ID3D11DeviceContext1, pShader: ^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    IASetPrimitiveTopology : proc(This: ^ID3D11DeviceContext1, Topology: D3D11_PRIMITIVE_TOPOLOGY),
    VSSetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSSetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    Begin : proc(This: ^ID3D11DeviceContext1, pAsync: ^ID3D11Asynchronous),
    End : proc(This: ^ID3D11DeviceContext1, pAsync: ^ID3D11Asynchronous),
    GetData : proc(This: ^ID3D11DeviceContext1, pAsync: ^ID3D11Asynchronous, pData: rawptr, DataSize: UINT, GetDataFlags: UINT) -> HRESULT,
    SetPredication : proc(This: ^ID3D11DeviceContext1, pPredicate: ^ID3D11Predicate, PredicateValue: BOOL),
    GSSetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSSetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMSetRenderTargets : proc(This: ^ID3D11DeviceContext1, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView),
    OMSetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext1, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    OMSetBlendState : proc(This: ^ID3D11DeviceContext1, pBlendState: ^ID3D11BlendState, BlendFactor: [4]FLOAT, SampleMask: UINT),
    OMSetDepthStencilState : proc(This: ^ID3D11DeviceContext1, pDepthStencilState: ^ID3D11DepthStencilState, StencilRef: UINT),
    SOSetTargets : proc(This: ^ID3D11DeviceContext1, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer, pOffsets: ^UINT),
    DrawAuto : proc(This: ^ID3D11DeviceContext1),
    DrawIndexedInstancedIndirect : proc(This: ^ID3D11DeviceContext1, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    DrawInstancedIndirect : proc(This: ^ID3D11DeviceContext1, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    Dispatch : proc(This: ^ID3D11DeviceContext1, ThreadGroupCountX: UINT, ThreadGroupCountY: UINT, ThreadGroupCountZ: UINT),
    DispatchIndirect : proc(This: ^ID3D11DeviceContext1, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    RSSetState : proc(This: ^ID3D11DeviceContext1, pRasterizerState: ^ID3D11RasterizerState),
    RSSetViewports : proc(This: ^ID3D11DeviceContext1, NumViewports: UINT, pViewports: ^D3D11_VIEWPORT),
    RSSetScissorRects : proc(This: ^ID3D11DeviceContext1, NumRects: UINT, pRects: ^D3D11_RECT),
    CopySubresourceRegion : proc(This: ^ID3D11DeviceContext1, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX),
    CopyResource : proc(This: ^ID3D11DeviceContext1, pDstResource: ^ID3D11Resource, pSrcResource: ^ID3D11Resource),
    UpdateSubresource : proc(This: ^ID3D11DeviceContext1, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT),
    CopyStructureCount : proc(This: ^ID3D11DeviceContext1, pDstBuffer: ^ID3D11Buffer, DstAlignedByteOffset: UINT, pSrcView: ^ID3D11UnorderedAccessView),
    ClearRenderTargetView : proc(This: ^ID3D11DeviceContext1, pRenderTargetView: ^ID3D11RenderTargetView, ColorRGBA: [4]FLOAT),
    ClearUnorderedAccessViewUint : proc(This: ^ID3D11DeviceContext1, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]UINT),
    ClearUnorderedAccessViewFloat : proc(This: ^ID3D11DeviceContext1, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]FLOAT),
    ClearDepthStencilView : proc(This: ^ID3D11DeviceContext1, pDepthStencilView: ^ID3D11DepthStencilView, ClearFlags: UINT, Depth: FLOAT, Stencil: UINT8),
    GenerateMips : proc(This: ^ID3D11DeviceContext1, pShaderResourceView: ^ID3D11ShaderResourceView),
    SetResourceMinLOD : proc(This: ^ID3D11DeviceContext1, pResource: ^ID3D11Resource, MinLOD: FLOAT),
    GetResourceMinLOD : proc(This: ^ID3D11DeviceContext1, pResource: ^ID3D11Resource) -> FLOAT,
    ResolveSubresource : proc(This: ^ID3D11DeviceContext1, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, Format: DXGI_FORMAT),
    ExecuteCommandList : proc(This: ^ID3D11DeviceContext1, pCommandList: ^ID3D11CommandList, RestoreContextState: BOOL),
    HSSetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSSetShader : proc(This: ^ID3D11DeviceContext1, pHullShader: ^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    HSSetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSSetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSSetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSSetShader : proc(This: ^ID3D11DeviceContext1, pDomainShader: ^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DSSetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSSetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSSetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSSetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    CSSetShader : proc(This: ^ID3D11DeviceContext1, pComputeShader: ^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    CSSetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSSetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    VSGetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSGetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSGetShader : proc(This: ^ID3D11DeviceContext1, ppPixelShader: ^^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSGetShader : proc(This: ^ID3D11DeviceContext1, ppVertexShader: ^^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IAGetInputLayout : proc(This: ^ID3D11DeviceContext1, ppInputLayout: ^^ID3D11InputLayout),
    IAGetVertexBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IAGetIndexBuffer : proc(This: ^ID3D11DeviceContext1, pIndexBuffer: ^^ID3D11Buffer, Format: ^DXGI_FORMAT, Offset: ^UINT),
    GSGetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSGetShader : proc(This: ^ID3D11DeviceContext1, ppGeometryShader: ^^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    IAGetPrimitiveTopology : proc(This: ^ID3D11DeviceContext1, pTopology: ^D3D11_PRIMITIVE_TOPOLOGY),
    VSGetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSGetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    GetPredication : proc(This: ^ID3D11DeviceContext1, ppPredicate: ^^ID3D11Predicate, pPredicateValue: ^BOOL),
    GSGetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSGetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMGetRenderTargets : proc(This: ^ID3D11DeviceContext1, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView),
    OMGetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext1, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    OMGetBlendState : proc(This: ^ID3D11DeviceContext1, ppBlendState: ^^ID3D11BlendState, BlendFactor: [4]FLOAT, pSampleMask: ^UINT),
    OMGetDepthStencilState : proc(This: ^ID3D11DeviceContext1, ppDepthStencilState: ^^ID3D11DepthStencilState, pStencilRef: ^UINT),
    SOGetTargets : proc(This: ^ID3D11DeviceContext1, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer),
    RSGetState : proc(This: ^ID3D11DeviceContext1, ppRasterizerState: ^^ID3D11RasterizerState),
    RSGetViewports : proc(This: ^ID3D11DeviceContext1, pNumViewports: ^UINT, pViewports: ^D3D11_VIEWPORT),
    RSGetScissorRects : proc(This: ^ID3D11DeviceContext1, pNumRects: ^UINT, pRects: ^D3D11_RECT),
    HSGetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSGetShader : proc(This: ^ID3D11DeviceContext1, ppHullShader: ^^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    HSGetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSGetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSGetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSGetShader : proc(This: ^ID3D11DeviceContext1, ppDomainShader: ^^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    DSGetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSGetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSGetShaderResources : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSGetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    CSGetShader : proc(This: ^ID3D11DeviceContext1, ppComputeShader: ^^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    CSGetSamplers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSGetConstantBuffers : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    ClearState : proc(This: ^ID3D11DeviceContext1),
    Flush : proc(This: ^ID3D11DeviceContext1),
    GetType : proc(This: ^ID3D11DeviceContext1) -> D3D11_DEVICE_CONTEXT_TYPE,
    GetContextFlags : proc(This: ^ID3D11DeviceContext1) -> UINT,
    FinishCommandList : proc(This: ^ID3D11DeviceContext1, RestoreDeferredContextState: BOOL, ppCommandList: ^^ID3D11CommandList) -> HRESULT,
    CopySubresourceRegion1 : proc(This: ^ID3D11DeviceContext1, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX, CopyFlags: UINT),
    UpdateSubresource1 : proc(This: ^ID3D11DeviceContext1, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT, CopyFlags: UINT),
    DiscardResource : proc(This: ^ID3D11DeviceContext1, pResource: ^ID3D11Resource),
    DiscardView : proc(This: ^ID3D11DeviceContext1, pResourceView: ^ID3D11View),
    VSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    VSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext1, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    SwapDeviceContextState : proc(This: ^ID3D11DeviceContext1, pState: ^ID3DDeviceContextState, ppPreviousState: ^^ID3DDeviceContextState),
    ClearView : proc(This: ^ID3D11DeviceContext1, pView: ^ID3D11View, Color: [4]FLOAT, pRect: ^D3D11_RECT, NumRects: UINT),
    DiscardView1 : proc(This: ^ID3D11DeviceContext1, pResourceView: ^ID3D11View, pRects: ^D3D11_RECT, NumRects: UINT),
}
D3D11_VIDEO_DECODER_SUB_SAMPLE_MAPPING_BLOCK :: struct {
    ClearSize: UINT,
    EncryptedSize: UINT,
}
D3D11_VIDEO_DECODER_BUFFER_DESC1 :: struct {
    BufferType: D3D11_VIDEO_DECODER_BUFFER_TYPE,
    DataOffset: UINT,
    DataSize: UINT,
    pIV: rawptr,
    IVSize: UINT,
    pSubSampleMappingBlock: ^D3D11_VIDEO_DECODER_SUB_SAMPLE_MAPPING_BLOCK,
    SubSampleMappingCount: UINT,
}
D3D11_VIDEO_DECODER_BEGIN_FRAME_CRYPTO_SESSION :: struct {
    pCryptoSession: ^ID3D11CryptoSession,
    BlobSize: UINT,
    pBlob: rawptr,
    pKeyInfoId: ^GUID,
    PrivateDataSize: UINT,
    pPrivateData: rawptr,
}
D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT :: struct {
    Enable: BOOL,
    Width: UINT,
    Height: UINT,
    Format: DXGI_FORMAT,
}
D3D11_KEY_EXCHANGE_HW_PROTECTION_INPUT_DATA :: struct {
    PrivateDataSize: UINT,
    HWProtectionDataSize: UINT,
    pbInput: [4]BYTE,
}
D3D11_KEY_EXCHANGE_HW_PROTECTION_OUTPUT_DATA :: struct {
    PrivateDataSize: UINT,
    MaxHWProtectionDataSize: UINT,
    HWProtectionDataSize: UINT,
    TransportTime: UINT64,
    ExecutionTime: UINT64,
    pbOutput: [4]BYTE,
}
D3D11_KEY_EXCHANGE_HW_PROTECTION_DATA :: struct {
    HWProtectionFunctionID: UINT,
    pInputData: ^D3D11_KEY_EXCHANGE_HW_PROTECTION_INPUT_DATA,
    pOutputData: ^D3D11_KEY_EXCHANGE_HW_PROTECTION_OUTPUT_DATA,
    Status: HRESULT,
}
D3D11_VIDEO_SAMPLE_DESC :: struct {
    Width: UINT,
    Height: UINT,
    Format: DXGI_FORMAT,
    ColorSpace: DXGI_COLOR_SPACE_TYPE,
}
ID3D11VideoContext1 :: struct {
    using vtbl: ^ID3D11VideoContext1Vtbl
}
ID3D11VideoContext1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoContext1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoContext1) -> ULONG,
    Release : proc(This: ^ID3D11VideoContext1) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoContext1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoContext1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoContext1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoContext1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetDecoderBuffer : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, Type: D3D11_VIDEO_DECODER_BUFFER_TYPE, pBufferSize: ^UINT, ppBuffer: ^rawptr) -> HRESULT,
    ReleaseDecoderBuffer : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, Type: D3D11_VIDEO_DECODER_BUFFER_TYPE) -> HRESULT,
    DecoderBeginFrame : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, pView: ^ID3D11VideoDecoderOutputView, ContentKeySize: UINT, pContentKey: rawptr) -> HRESULT,
    DecoderEndFrame : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder) -> HRESULT,
    SubmitDecoderBuffers : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, NumBuffers: UINT, pBufferDesc: ^D3D11_VIDEO_DECODER_BUFFER_DESC) -> HRESULT,
    DecoderExtension : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, pExtensionData: ^D3D11_VIDEO_DECODER_EXTENSION) -> APP_DEPRECATED_HRESULT,
    VideoProcessorSetOutputTargetRect : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, Enable: BOOL, pRect: ^RECT),
    VideoProcessorSetOutputBackgroundColor : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, YCbCr: BOOL, pColor: ^D3D11_VIDEO_COLOR),
    VideoProcessorSetOutputColorSpace : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorSetOutputAlphaFillMode : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, AlphaFillMode: D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE, StreamIndex: UINT),
    VideoProcessorSetOutputConstriction : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, Enable: BOOL, Size: SIZE),
    VideoProcessorSetOutputStereoMode : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, Enable: BOOL),
    VideoProcessorSetOutputExtension : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorGetOutputTargetRect : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, Enabled: ^BOOL, pRect: ^RECT),
    VideoProcessorGetOutputBackgroundColor : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pYCbCr: ^BOOL, pColor: ^D3D11_VIDEO_COLOR),
    VideoProcessorGetOutputColorSpace : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorGetOutputAlphaFillMode : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pAlphaFillMode: ^D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE, pStreamIndex: ^UINT),
    VideoProcessorGetOutputConstriction : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pEnabled: ^BOOL, pSize: ^SIZE),
    VideoProcessorGetOutputStereoMode : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pEnabled: ^BOOL),
    VideoProcessorGetOutputExtension : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorSetStreamFrameFormat : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, FrameFormat: D3D11_VIDEO_FRAME_FORMAT),
    VideoProcessorSetStreamColorSpace : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorSetStreamOutputRate : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, OutputRate: D3D11_VIDEO_PROCESSOR_OUTPUT_RATE, RepeatFrame: BOOL, pCustomRate: ^DXGI_RATIONAL),
    VideoProcessorSetStreamSourceRect : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, pRect: ^RECT),
    VideoProcessorSetStreamDestRect : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, pRect: ^RECT),
    VideoProcessorSetStreamAlpha : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Alpha: FLOAT),
    VideoProcessorSetStreamPalette : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Count: UINT, pEntries: ^UINT),
    VideoProcessorSetStreamPixelAspectRatio : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, pSourceAspectRatio: ^DXGI_RATIONAL, pDestinationAspectRatio: ^DXGI_RATIONAL),
    VideoProcessorSetStreamLumaKey : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Lower: FLOAT, Upper: FLOAT),
    VideoProcessorSetStreamStereoFormat : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Format: D3D11_VIDEO_PROCESSOR_STEREO_FORMAT, LeftViewFrame0: BOOL, BaseViewFrame0: BOOL, FlipMode: D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE, MonoOffset: int),
    VideoProcessorSetStreamAutoProcessingMode : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL),
    VideoProcessorSetStreamFilter : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Filter: D3D11_VIDEO_PROCESSOR_FILTER, Enable: BOOL, Level: int),
    VideoProcessorSetStreamExtension : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorGetStreamFrameFormat : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pFrameFormat: ^D3D11_VIDEO_FRAME_FORMAT),
    VideoProcessorGetStreamColorSpace : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pColorSpace: ^D3D11_VIDEO_PROCESSOR_COLOR_SPACE),
    VideoProcessorGetStreamOutputRate : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pOutputRate: ^D3D11_VIDEO_PROCESSOR_OUTPUT_RATE, pRepeatFrame: ^BOOL, pCustomRate: ^DXGI_RATIONAL),
    VideoProcessorGetStreamSourceRect : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pRect: ^RECT),
    VideoProcessorGetStreamDestRect : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pRect: ^RECT),
    VideoProcessorGetStreamAlpha : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pAlpha: ^FLOAT),
    VideoProcessorGetStreamPalette : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Count: UINT, pEntries: ^UINT),
    VideoProcessorGetStreamPixelAspectRatio : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pSourceAspectRatio: ^DXGI_RATIONAL, pDestinationAspectRatio: ^DXGI_RATIONAL),
    VideoProcessorGetStreamLumaKey : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL, pLower: ^FLOAT, pUpper: ^FLOAT),
    VideoProcessorGetStreamStereoFormat : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnable: ^BOOL, pFormat: ^D3D11_VIDEO_PROCESSOR_STEREO_FORMAT, pLeftViewFrame0: ^BOOL, pBaseViewFrame0: ^BOOL, pFlipMode: ^D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE, MonoOffset: ^int),
    VideoProcessorGetStreamAutoProcessingMode : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnabled: ^BOOL),
    VideoProcessorGetStreamFilter : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Filter: D3D11_VIDEO_PROCESSOR_FILTER, pEnabled: ^BOOL, pLevel: ^int),
    VideoProcessorGetStreamExtension : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pExtensionGuid: ^GUID, DataSize: UINT, pData: rawptr) -> APP_DEPRECATED_HRESULT,
    VideoProcessorBlt : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pView: ^ID3D11VideoProcessorOutputView, OutputFrame: UINT, StreamCount: UINT, pStreams: ^D3D11_VIDEO_PROCESSOR_STREAM) -> HRESULT,
    NegotiateCryptoSessionKeyExchange : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, DataSize: UINT, pData: rawptr) -> HRESULT,
    EncryptionBlt : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, pSrcSurface: ^ID3D11Texture2D, pDstSurface: ^ID3D11Texture2D, IVSize: UINT, pIV: rawptr),
    DecryptionBlt : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, pSrcSurface: ^ID3D11Texture2D, pDstSurface: ^ID3D11Texture2D, pEncryptedBlockInfo: ^D3D11_ENCRYPTED_BLOCK_INFO, ContentKeySize: UINT, pContentKey: rawptr, IVSize: UINT, pIV: rawptr),
    StartSessionKeyRefresh : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, RandomNumberSize: UINT, pRandomNumber: rawptr),
    FinishSessionKeyRefresh : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession),
    GetEncryptionBltKey : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, KeySize: UINT, pReadbackKey: rawptr) -> HRESULT,
    NegotiateAuthenticatedChannelKeyExchange : proc(This: ^ID3D11VideoContext1, pChannel: ^ID3D11AuthenticatedChannel, DataSize: UINT, pData: rawptr) -> HRESULT,
    QueryAuthenticatedChannel : proc(This: ^ID3D11VideoContext1, pChannel: ^ID3D11AuthenticatedChannel, InputSize: UINT, pInput: rawptr, OutputSize: UINT, pOutput: rawptr) -> HRESULT,
    ConfigureAuthenticatedChannel : proc(This: ^ID3D11VideoContext1, pChannel: ^ID3D11AuthenticatedChannel, InputSize: UINT, pInput: rawptr, pOutput: ^D3D11_AUTHENTICATED_CONFIGURE_OUTPUT) -> HRESULT,
    VideoProcessorSetStreamRotation : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, Rotation: D3D11_VIDEO_PROCESSOR_ROTATION),
    VideoProcessorGetStreamRotation : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnable: ^BOOL, pRotation: ^D3D11_VIDEO_PROCESSOR_ROTATION),
    SubmitDecoderBuffers1 : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, NumBuffers: UINT, pBufferDesc: ^D3D11_VIDEO_DECODER_BUFFER_DESC1) -> HRESULT,
    GetDataForNewHardwareKey : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, PrivateInputSize: UINT, pPrivatInputData: rawptr, pPrivateOutputData: ^UINT64) -> HRESULT,
    CheckCryptoSessionStatus : proc(This: ^ID3D11VideoContext1, pCryptoSession: ^ID3D11CryptoSession, pStatus: ^UINT) -> HRESULT,
    DecoderEnableDownsampling : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, InputColorSpace: DXGI_COLOR_SPACE_TYPE, pOutputDesc: ^D3D11_VIDEO_SAMPLE_DESC, ReferenceFrameCount: UINT) -> HRESULT,
    DecoderUpdateDownsampling : proc(This: ^ID3D11VideoContext1, pDecoder: ^ID3D11VideoDecoder, pOutputDesc: ^D3D11_VIDEO_SAMPLE_DESC) -> HRESULT,
    VideoProcessorSetOutputColorSpace1 : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, ColorSpace: DXGI_COLOR_SPACE_TYPE),
    VideoProcessorSetOutputShaderUsage : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, ShaderUsage: BOOL),
    VideoProcessorGetOutputColorSpace1 : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pColorSpace: ^DXGI_COLOR_SPACE_TYPE),
    VideoProcessorGetOutputShaderUsage : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, pShaderUsage: ^BOOL),
    VideoProcessorSetStreamColorSpace1 : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, ColorSpace: DXGI_COLOR_SPACE_TYPE),
    VideoProcessorSetStreamMirror : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, Enable: BOOL, FlipHorizontal: BOOL, FlipVertical: BOOL),
    VideoProcessorGetStreamColorSpace1 : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pColorSpace: ^DXGI_COLOR_SPACE_TYPE),
    VideoProcessorGetStreamMirror : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, StreamIndex: UINT, pEnable: ^BOOL, pFlipHorizontal: ^BOOL, pFlipVertical: ^BOOL),
    VideoProcessorGetBehaviorHints : proc(This: ^ID3D11VideoContext1, pVideoProcessor: ^ID3D11VideoProcessor, OutputWidth: UINT, OutputHeight: UINT, OutputFormat: DXGI_FORMAT, StreamCount: UINT, pStreams: ^D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT, pBehaviorHints: ^UINT) -> HRESULT,
}
ID3D11VideoDevice1 :: struct {
    using vtbl: ^ID3D11VideoDevice1Vtbl
}
ID3D11VideoDevice1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoDevice1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoDevice1) -> ULONG,
    Release : proc(This: ^ID3D11VideoDevice1) -> ULONG,
    CreateVideoDecoder : proc(This: ^ID3D11VideoDevice1, pVideoDesc: ^D3D11_VIDEO_DECODER_DESC, pConfig: ^D3D11_VIDEO_DECODER_CONFIG, ppDecoder: ^^ID3D11VideoDecoder) -> HRESULT,
    CreateVideoProcessor : proc(This: ^ID3D11VideoDevice1, pEnum: ^ID3D11VideoProcessorEnumerator, RateConversionIndex: UINT, ppVideoProcessor: ^^ID3D11VideoProcessor) -> HRESULT,
    CreateAuthenticatedChannel : proc(This: ^ID3D11VideoDevice1, ChannelType: D3D11_AUTHENTICATED_CHANNEL_TYPE, ppAuthenticatedChannel: ^^ID3D11AuthenticatedChannel) -> HRESULT,
    CreateCryptoSession : proc(This: ^ID3D11VideoDevice1, pCryptoType: ^GUID, pDecoderProfile: ^GUID, pKeyExchangeType: ^GUID, ppCryptoSession: ^^ID3D11CryptoSession) -> HRESULT,
    CreateVideoDecoderOutputView : proc(This: ^ID3D11VideoDevice1, pResource: ^ID3D11Resource, pDesc: ^D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC, ppVDOVView: ^^ID3D11VideoDecoderOutputView) -> HRESULT,
    CreateVideoProcessorInputView : proc(This: ^ID3D11VideoDevice1, pResource: ^ID3D11Resource, pEnum: ^ID3D11VideoProcessorEnumerator, pDesc: ^D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC, ppVPIView: ^^ID3D11VideoProcessorInputView) -> HRESULT,
    CreateVideoProcessorOutputView : proc(This: ^ID3D11VideoDevice1, pResource: ^ID3D11Resource, pEnum: ^ID3D11VideoProcessorEnumerator, pDesc: ^D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC, ppVPOView: ^^ID3D11VideoProcessorOutputView) -> HRESULT,
    CreateVideoProcessorEnumerator : proc(This: ^ID3D11VideoDevice1, pDesc: ^D3D11_VIDEO_PROCESSOR_CONTENT_DESC, ppEnum: ^^ID3D11VideoProcessorEnumerator) -> HRESULT,
    GetVideoDecoderProfileCount : proc(This: ^ID3D11VideoDevice1) -> UINT,
    GetVideoDecoderProfile : proc(This: ^ID3D11VideoDevice1, Index: UINT, pDecoderProfile: ^GUID) -> HRESULT,
    CheckVideoDecoderFormat : proc(This: ^ID3D11VideoDevice1, pDecoderProfile: ^GUID, Format: DXGI_FORMAT, pSupported: ^BOOL) -> HRESULT,
    GetVideoDecoderConfigCount : proc(This: ^ID3D11VideoDevice1, pDesc: ^D3D11_VIDEO_DECODER_DESC, pCount: ^UINT) -> HRESULT,
    GetVideoDecoderConfig : proc(This: ^ID3D11VideoDevice1, pDesc: ^D3D11_VIDEO_DECODER_DESC, Index: UINT, pConfig: ^D3D11_VIDEO_DECODER_CONFIG) -> HRESULT,
    GetContentProtectionCaps : proc(This: ^ID3D11VideoDevice1, pCryptoType: ^GUID, pDecoderProfile: ^GUID, pCaps: ^D3D11_VIDEO_CONTENT_PROTECTION_CAPS) -> HRESULT,
    CheckCryptoKeyExchange : proc(This: ^ID3D11VideoDevice1, pCryptoType: ^GUID, pDecoderProfile: ^GUID, Index: UINT, pKeyExchangeType: ^GUID) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoDevice1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoDevice1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetCryptoSessionPrivateDataSize : proc(This: ^ID3D11VideoDevice1, pCryptoType: ^GUID, pDecoderProfile: ^GUID, pKeyExchangeType: ^GUID, pPrivateInputSize: ^UINT, pPrivateOutputSize: ^UINT) -> HRESULT,
    GetVideoDecoderCaps : proc(This: ^ID3D11VideoDevice1, pDecoderProfile: ^GUID, SampleWidth: UINT, SampleHeight: UINT, pFrameRate: ^DXGI_RATIONAL, BitRate: UINT, pCryptoType: ^GUID, pDecoderCaps: ^UINT) -> HRESULT,
    CheckVideoDecoderDownsampling : proc(This: ^ID3D11VideoDevice1, pInputDesc: ^D3D11_VIDEO_DECODER_DESC, InputColorSpace: DXGI_COLOR_SPACE_TYPE, pInputConfig: ^D3D11_VIDEO_DECODER_CONFIG, pFrameRate: ^DXGI_RATIONAL, pOutputDesc: ^D3D11_VIDEO_SAMPLE_DESC, pSupported: ^BOOL, pRealTimeHint: ^BOOL) -> HRESULT,
    RecommendVideoDecoderDownsampleParameters : proc(This: ^ID3D11VideoDevice1, pInputDesc: ^D3D11_VIDEO_DECODER_DESC, InputColorSpace: DXGI_COLOR_SPACE_TYPE, pInputConfig: ^D3D11_VIDEO_DECODER_CONFIG, pFrameRate: ^DXGI_RATIONAL, pRecommendedOutputDesc: ^D3D11_VIDEO_SAMPLE_DESC) -> HRESULT,
}
ID3D11VideoProcessorEnumerator1 :: struct {
    using vtbl: ^ID3D11VideoProcessorEnumerator1Vtbl
}
ID3D11VideoProcessorEnumerator1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11VideoProcessorEnumerator1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11VideoProcessorEnumerator1) -> ULONG,
    Release : proc(This: ^ID3D11VideoProcessorEnumerator1) -> ULONG,
    GetDevice : proc(This: ^ID3D11VideoProcessorEnumerator1, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11VideoProcessorEnumerator1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11VideoProcessorEnumerator1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11VideoProcessorEnumerator1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetVideoProcessorContentDesc : proc(This: ^ID3D11VideoProcessorEnumerator1, pContentDesc: ^D3D11_VIDEO_PROCESSOR_CONTENT_DESC) -> HRESULT,
    CheckVideoProcessorFormat : proc(This: ^ID3D11VideoProcessorEnumerator1, Format: DXGI_FORMAT, pFlags: ^UINT) -> HRESULT,
    GetVideoProcessorCaps : proc(This: ^ID3D11VideoProcessorEnumerator1, pCaps: ^D3D11_VIDEO_PROCESSOR_CAPS) -> HRESULT,
    GetVideoProcessorRateConversionCaps : proc(This: ^ID3D11VideoProcessorEnumerator1, TypeIndex: UINT, pCaps: ^D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS) -> HRESULT,
    GetVideoProcessorCustomRate : proc(This: ^ID3D11VideoProcessorEnumerator1, TypeIndex: UINT, CustomRateIndex: UINT, pRate: ^D3D11_VIDEO_PROCESSOR_CUSTOM_RATE) -> HRESULT,
    GetVideoProcessorFilterRange : proc(This: ^ID3D11VideoProcessorEnumerator1, Filter: D3D11_VIDEO_PROCESSOR_FILTER, pRange: ^D3D11_VIDEO_PROCESSOR_FILTER_RANGE) -> HRESULT,
    CheckVideoProcessorFormatConversion : proc(This: ^ID3D11VideoProcessorEnumerator1, InputFormat: DXGI_FORMAT, InputColorSpace: DXGI_COLOR_SPACE_TYPE, OutputFormat: DXGI_FORMAT, OutputColorSpace: DXGI_COLOR_SPACE_TYPE, pSupported: ^BOOL) -> HRESULT,
}
ID3D11Device1 :: struct {
    using vtbl: ^ID3D11Device1Vtbl
}
ID3D11Device1Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Device1, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Device1) -> ULONG,
    Release : proc(This: ^ID3D11Device1) -> ULONG,
    CreateBuffer : proc(This: ^ID3D11Device1, pDesc: ^D3D11_BUFFER_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppBuffer: ^^ID3D11Buffer) -> HRESULT,
    CreateTexture1D : proc(This: ^ID3D11Device1, pDesc: ^D3D11_TEXTURE1D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture1D: ^^ID3D11Texture1D) -> HRESULT,
    CreateTexture2D : proc(This: ^ID3D11Device1, pDesc: ^D3D11_TEXTURE2D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture2D: ^^ID3D11Texture2D) -> HRESULT,
    CreateTexture3D : proc(This: ^ID3D11Device1, pDesc: ^D3D11_TEXTURE3D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture3D: ^^ID3D11Texture3D) -> HRESULT,
    CreateShaderResourceView : proc(This: ^ID3D11Device1, pResource: ^ID3D11Resource, pDesc: ^D3D11_SHADER_RESOURCE_VIEW_DESC, ppSRView: ^^ID3D11ShaderResourceView) -> HRESULT,
    CreateUnorderedAccessView : proc(This: ^ID3D11Device1, pResource: ^ID3D11Resource, pDesc: ^D3D11_UNORDERED_ACCESS_VIEW_DESC, ppUAView: ^^ID3D11UnorderedAccessView) -> HRESULT,
    CreateRenderTargetView : proc(This: ^ID3D11Device1, pResource: ^ID3D11Resource, pDesc: ^D3D11_RENDER_TARGET_VIEW_DESC, ppRTView: ^^ID3D11RenderTargetView) -> HRESULT,
    CreateDepthStencilView : proc(This: ^ID3D11Device1, pResource: ^ID3D11Resource, pDesc: ^D3D11_DEPTH_STENCIL_VIEW_DESC, ppDepthStencilView: ^^ID3D11DepthStencilView) -> HRESULT,
    CreateInputLayout : proc(This: ^ID3D11Device1, pInputElementDescs: ^D3D11_INPUT_ELEMENT_DESC, NumElements: UINT, pShaderBytecodeWithInputSignature: rawptr, BytecodeLength: SIZE_T, ppInputLayout: ^^ID3D11InputLayout) -> HRESULT,
    CreateVertexShader : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppVertexShader: ^^ID3D11VertexShader) -> HRESULT,
    CreateGeometryShader : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreateGeometryShaderWithStreamOutput : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pSODeclaration: ^D3D11_SO_DECLARATION_ENTRY, NumEntries: UINT, pBufferStrides: ^UINT, NumStrides: UINT, RasterizedStream: UINT, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreatePixelShader : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppPixelShader: ^^ID3D11PixelShader) -> HRESULT,
    CreateHullShader : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppHullShader: ^^ID3D11HullShader) -> HRESULT,
    CreateDomainShader : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppDomainShader: ^^ID3D11DomainShader) -> HRESULT,
    CreateComputeShader : proc(This: ^ID3D11Device1, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppComputeShader: ^^ID3D11ComputeShader) -> HRESULT,
    CreateClassLinkage : proc(This: ^ID3D11Device1, ppLinkage: ^^ID3D11ClassLinkage) -> HRESULT,
    CreateBlendState : proc(This: ^ID3D11Device1, pBlendStateDesc: ^D3D11_BLEND_DESC, ppBlendState: ^^ID3D11BlendState) -> HRESULT,
    CreateDepthStencilState : proc(This: ^ID3D11Device1, pDepthStencilDesc: ^D3D11_DEPTH_STENCIL_DESC, ppDepthStencilState: ^^ID3D11DepthStencilState) -> HRESULT,
    CreateRasterizerState : proc(This: ^ID3D11Device1, pRasterizerDesc: ^D3D11_RASTERIZER_DESC, ppRasterizerState: ^^ID3D11RasterizerState) -> HRESULT,
    CreateSamplerState : proc(This: ^ID3D11Device1, pSamplerDesc: ^D3D11_SAMPLER_DESC, ppSamplerState: ^^ID3D11SamplerState) -> HRESULT,
    CreateQuery : proc(This: ^ID3D11Device1, pQueryDesc: ^D3D11_QUERY_DESC, ppQuery: ^^ID3D11Query) -> HRESULT,
    CreatePredicate : proc(This: ^ID3D11Device1, pPredicateDesc: ^D3D11_QUERY_DESC, ppPredicate: ^^ID3D11Predicate) -> HRESULT,
    CreateCounter : proc(This: ^ID3D11Device1, pCounterDesc: ^D3D11_COUNTER_DESC, ppCounter: ^^ID3D11Counter) -> HRESULT,
    CreateDeferredContext : proc(This: ^ID3D11Device1, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext) -> HRESULT,
    OpenSharedResource : proc(This: ^ID3D11Device1, hResource: HANDLE, ReturnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    CheckFormatSupport : proc(This: ^ID3D11Device1, Format: DXGI_FORMAT, pFormatSupport: ^UINT) -> HRESULT,
    CheckMultisampleQualityLevels : proc(This: ^ID3D11Device1, Format: DXGI_FORMAT, SampleCount: UINT, pNumQualityLevels: ^UINT) -> HRESULT,
    CheckCounterInfo : proc(This: ^ID3D11Device1, pCounterInfo: ^D3D11_COUNTER_INFO),
    CheckCounter : proc(This: ^ID3D11Device1, pDesc: ^D3D11_COUNTER_DESC, pType: ^D3D11_COUNTER_TYPE, pActiveCounters: ^UINT, szName: LPSTR, pNameLength: ^UINT, szUnits: LPSTR, pUnitsLength: ^UINT, szDescription: LPSTR, pDescriptionLength: ^UINT) -> HRESULT,
    CheckFeatureSupport : proc(This: ^ID3D11Device1, Feature: D3D11_FEATURE, pFeatureSupportData: rawptr, FeatureSupportDataSize: UINT) -> HRESULT,
    GetPrivateData : proc(This: ^ID3D11Device1, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Device1, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Device1, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetFeatureLevel : proc(This: ^ID3D11Device1) -> D3D_FEATURE_LEVEL,
    GetCreationFlags : proc(This: ^ID3D11Device1) -> UINT,
    GetDeviceRemovedReason : proc(This: ^ID3D11Device1) -> HRESULT,
    GetImmediateContext : proc(This: ^ID3D11Device1, ppImmediateContext: ^^ID3D11DeviceContext),
    SetExceptionMode : proc(This: ^ID3D11Device1, RaiseFlags: UINT) -> HRESULT,
    GetExceptionMode : proc(This: ^ID3D11Device1) -> UINT,
    GetImmediateContext1 : proc(This: ^ID3D11Device1, ppImmediateContext: ^^ID3D11DeviceContext1),
    CreateDeferredContext1 : proc(This: ^ID3D11Device1, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext1) -> HRESULT,
    CreateBlendState1 : proc(This: ^ID3D11Device1, pBlendStateDesc: ^D3D11_BLEND_DESC1, ppBlendState: ^^ID3D11BlendState1) -> HRESULT,
    CreateRasterizerState1 : proc(This: ^ID3D11Device1, pRasterizerDesc: ^D3D11_RASTERIZER_DESC1, ppRasterizerState: ^^ID3D11RasterizerState1) -> HRESULT,
    CreateDeviceContextState : proc(This: ^ID3D11Device1, Flags: UINT, pFeatureLevels: ^D3D_FEATURE_LEVEL, FeatureLevels: UINT, SDKVersion: UINT, EmulatedInterface: REFIID, pChosenFeatureLevel: ^D3D_FEATURE_LEVEL, ppContextState: ^^ID3DDeviceContextState) -> HRESULT,
    OpenSharedResource1 : proc(This: ^ID3D11Device1, hResource: HANDLE, returnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    OpenSharedResourceByName : proc(This: ^ID3D11Device1, lpName: LPCWSTR, dwDesiredAccess: DWORD, returnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
}
ID3DUserDefinedAnnotation :: struct {
    using vtbl: ^ID3DUserDefinedAnnotationVtbl
}
ID3DUserDefinedAnnotationVtbl :: struct {
    QueryInterface : proc(This: ^ID3DUserDefinedAnnotation, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3DUserDefinedAnnotation) -> ULONG,
    Release : proc(This: ^ID3DUserDefinedAnnotation) -> ULONG,
    BeginEvent : proc(This: ^ID3DUserDefinedAnnotation, Name: LPCWSTR) -> INT,
    EndEvent : proc(This: ^ID3DUserDefinedAnnotation) -> INT,
    SetMarker : proc(This: ^ID3DUserDefinedAnnotation, Name: LPCWSTR),
    GetStatus : proc(This: ^ID3DUserDefinedAnnotation) -> BOOL,
}
//D3D11_COPY_FLAGS
D3D11_COPY_NO_OVERWRITE : u32 :  0x1;
D3D11_COPY_DISCARD : u32 :  0x2
    ;
//D3D11_LOGIC_OP
D3D11_LOGIC_OP_CLEAR : u32 :  0;
D3D11_LOGIC_OP_SET : u32 :  ( D3D11_LOGIC_OP_CLEAR + 1 ) ;
D3D11_LOGIC_OP_COPY : u32 :  ( D3D11_LOGIC_OP_SET + 1 ) ;
D3D11_LOGIC_OP_COPY_INVERTED : u32 :  ( D3D11_LOGIC_OP_COPY + 1 ) ;
D3D11_LOGIC_OP_NOOP : u32 :  ( D3D11_LOGIC_OP_COPY_INVERTED + 1 ) ;
D3D11_LOGIC_OP_INVERT : u32 :  ( D3D11_LOGIC_OP_NOOP + 1 ) ;
D3D11_LOGIC_OP_AND : u32 :  ( D3D11_LOGIC_OP_INVERT + 1 ) ;
D3D11_LOGIC_OP_NAND : u32 :  ( D3D11_LOGIC_OP_AND + 1 ) ;
D3D11_LOGIC_OP_OR : u32 :  ( D3D11_LOGIC_OP_NAND + 1 ) ;
D3D11_LOGIC_OP_NOR : u32 :  ( D3D11_LOGIC_OP_OR + 1 ) ;
D3D11_LOGIC_OP_XOR : u32 :  ( D3D11_LOGIC_OP_NOR + 1 ) ;
D3D11_LOGIC_OP_EQUIV : u32 :  ( D3D11_LOGIC_OP_XOR + 1 ) ;
D3D11_LOGIC_OP_AND_REVERSE : u32 :  ( D3D11_LOGIC_OP_EQUIV + 1 ) ;
D3D11_LOGIC_OP_AND_INVERTED : u32 :  ( D3D11_LOGIC_OP_AND_REVERSE + 1 ) ;
D3D11_LOGIC_OP_OR_REVERSE : u32 :  ( D3D11_LOGIC_OP_AND_INVERTED + 1 ) ;
D3D11_LOGIC_OP_OR_INVERTED : u32 :  ( D3D11_LOGIC_OP_OR_REVERSE + 1 )
    ;
//D3D11_1_CREATE_DEVICE_CONTEXT_STATE_FLAG
D3D11_1_CREATE_DEVICE_CONTEXT_STATE_SINGLETHREADED : u32 :  0x1
    ;
//D3D11_VIDEO_DECODER_CAPS
D3D11_VIDEO_DECODER_CAPS_DOWNSAMPLE : u32 :  0x1;
D3D11_VIDEO_DECODER_CAPS_NON_REAL_TIME : u32 :  0x2;
D3D11_VIDEO_DECODER_CAPS_DOWNSAMPLE_DYNAMIC : u32 :  0x4;
D3D11_VIDEO_DECODER_CAPS_DOWNSAMPLE_REQUIRED : u32 :  0x8;
D3D11_VIDEO_DECODER_CAPS_UNSUPPORTED : u32 :  0x10
    ;
//D3D11_VIDEO_PROCESSOR_BEHAVIOR_HINTS
D3D11_VIDEO_PROCESSOR_BEHAVIOR_HINT_MULTIPLANE_OVERLAY_ROTATION : u32 :  0x1;
D3D11_VIDEO_PROCESSOR_BEHAVIOR_HINT_MULTIPLANE_OVERLAY_RESIZE : u32 :  0x2;
D3D11_VIDEO_PROCESSOR_BEHAVIOR_HINT_MULTIPLANE_OVERLAY_COLOR_SPACE_CONVERSION : u32 :  0x4;
D3D11_VIDEO_PROCESSOR_BEHAVIOR_HINT_TRIPLE_BUFFER_OUTPUT : u32 :  0x8
    ;
//D3D11_CRYPTO_SESSION_STATUS
D3D11_CRYPTO_SESSION_STATUS_OK : u32 :  0;
D3D11_CRYPTO_SESSION_STATUS_KEY_LOST : u32 :  1;
D3D11_CRYPTO_SESSION_STATUS_KEY_AND_CONTENT_LOST : u32 :  2
    ;
