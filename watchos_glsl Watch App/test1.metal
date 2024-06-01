//
//  test1.metal
//  watchos_glsl Watch App
//
//  Created by Beppe Vanrolleghem on 01/06/2024.
//

#include <metal_stdlib>
using namespace metal;
#include <SceneKit/scn_metal>

struct Uniforms {
    float2 resolution;
    float time;
};

struct FragmentIn {
    float4 position [[position]];
    float2 st;
};

[[fragment]]
float4 fragment_main(FragmentIn in [[stage_in]],
                     constant Uniforms &uniforms [[buffer(0)]]) {
    float3 color = float3(1.,.0,.0);
    return float4(color, 1.);
}

[[stitchable]]
half4 testfn(float2 position, half4 color) {
    
    return color;
}
