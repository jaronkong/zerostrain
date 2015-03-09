//
// Distort shader like DNA strand
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float in_count;
uniform float in_angle;
uniform float in_split;

void main()
{
    //Rotate the strand
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    float splitProp = smoothstep( in_split, in_split+12.0, in_Position.z );
    object_space_pos.x += ( ( splitProp * -4.0 ) + 4.0 );
    float deg = ( in_angle * (object_space_pos.z - in_split) * splitProp );
    mat4 rotate = mat4(
        cos( deg ), -sin( deg ), 0.0, 0.0,
        sin( deg ), cos( deg ), 0.0, 0.0,
        0.0, 0.0, 1.0, 0.0,
        0.0, 0.0, 0.0, 1.0
    );
    object_space_pos = ( rotate * object_space_pos );
    
    //Get final position
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    //Pass through colors
    v_vColour = in_Colour;
    v_vTexcoord = vec2( (floor(in_Position.z+0.5)/in_count), 0.5 );
    
    //Apply lighting
    vec4 norm = ( rotate * vec4( in_Normal.xyz, 0.0 ) );
    norm = ( gm_Matrices[MATRIX_WORLD_VIEW] * norm );
    v_vColour.rgb *= vec3( -norm.z/5.0 );
    
    //Apply fog
    //v_vColour.rgb *= pow(clamp(1.0-(gl_Position.z/750.0),0.0,1.0), 0.6);
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

