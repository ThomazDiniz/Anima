varying vec2 v_texcoord;
varying vec4 v_vColour;

uniform float wave_amount;
uniform float wave_distortion;
uniform float wave_speed;

void main(){ 
    vec2 uv = v_texcoord;
    uv.x = uv.x+cos(uv.y*wave_amount)/wave_distortion;
    uv.y = uv.y+sin(uv.x*wave_amount)/wave_distortion;
 
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture,uv);
}
