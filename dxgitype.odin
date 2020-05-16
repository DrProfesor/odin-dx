package dx

DXGI_RGB :: struct {
    Red: float,
    Green: float,
    Blue: float,
}
_D3DCOLORVALUE :: struct {
    r: float,
    g: float,
    b: float,
    a: float,
}
DXGI_GAMMA_CONTROL :: struct {
    Scale: DXGI_RGB,
    Offset: DXGI_RGB,
    GammaCurve: [1025]DXGI_RGB,
}
DXGI_GAMMA_CONTROL_CAPABILITIES :: struct {
    ScaleAndOffsetSupported: BOOL,
    MaxConvertedValue: float,
    MinConvertedValue: float,
    NumGammaControlPoints: UINT,
    ControlPointPositions: [1025]float,
}
DXGI_MODE_DESC :: struct {
    Width: UINT,
    Height: UINT,
    RefreshRate: DXGI_RATIONAL,
    Format: DXGI_FORMAT,
    ScanlineOrdering: UINT,
    Scaling: UINT,
}
DXGI_JPEG_DC_HUFFMAN_TABLE :: struct {
    CodeCounts: [12]BYTE,
    CodeValues: [12]BYTE,
}
DXGI_JPEG_AC_HUFFMAN_TABLE :: struct {
    CodeCounts: [16]BYTE,
    CodeValues: [162]BYTE,
}
DXGI_JPEG_QUANTIZATION_TABLE :: struct {
    Elements: [64]BYTE,
}
//DXGI_MODE_SCANLINE_ORDER
DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED : u32 =  0;
DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE : u32 =  1;
DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST : u32 =  2;
DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST : u32 =  3
;
//DXGI_MODE_SCALING
DXGI_MODE_SCALING_UNSPECIFIED : u32 =  0;
DXGI_MODE_SCALING_CENTERED : u32 =  1;
DXGI_MODE_SCALING_STRETCHED : u32 =  2
;
//DXGI_MODE_ROTATION
DXGI_MODE_ROTATION_UNSPECIFIED : u32 =  0;
DXGI_MODE_ROTATION_IDENTITY : u32 =  1;
DXGI_MODE_ROTATION_ROTATE90 : u32 =  2;
DXGI_MODE_ROTATION_ROTATE180 : u32 =  3;
DXGI_MODE_ROTATION_ROTATE270 : u32 =  4
;
