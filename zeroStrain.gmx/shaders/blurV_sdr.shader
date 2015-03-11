attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 vTexCoord;
varying vec2 coord;
varying float blurSizeInput;

uniform float inputSize;

void main()
{
    //coord = in_TextureCoord;
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    
    // Clean up inaccuracies
    vec2 Pos;
    Pos = sign(in_TextureCoord.xy);
    
    //gl_Position = vec4(Pos, 0.0, 1.0);
    // Image-space
    //vTexCoord = Pos * 0.5 + 0.5;
    vTexCoord = in_TextureCoord;
    
    blurSizeInput = inputSize;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
uniform sampler2D heightMap;

varying vec2 vTexCoord;
varying vec2 coord;
varying float blurSizeInput;

void main(void)
{
    //vec4 mapColor = texture2D( heightMap, vTexCoord );
    //float heightOffset = mapColor.r;
    float blurSize = blurSizeInput;// * heightOffset;
    vec4 sum = vec4(0.0);
    
    // blur in y (vertical)
    // take nine samples, with the distance blurSize between them
    sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y - 4.0*blurSize)) * 0.05;
    //sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y - 3.0*blurSize)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y- 2.0*blurSize)) * 0.12;
    //sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y - blurSize)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y)) * 0.16;
    //sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y + blurSize)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y + 2.0*blurSize)) * 0.12;
    //sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y + 3.0*blurSize)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(vTexCoord.x, vTexCoord.y + 4.0*blurSize)) * 0.05;
    
    gl_FragColor = sum*2.25;
}
