//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;

const float PI = 3.14159265;

// Rand one-liner rand is a boilerplate function
float rand(vec2 co)
{
	return fract (sin (dot (co.xy, vec2 (12.9898, 78.233))) * 43758.5453);
}



void main()
{
	float texColorAlpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	vec2 res = vec2(30.0, 44.0);
	// Normalized pixel coordinates (from 0 to 1)
    vec2 uv = v_vTexcoord / res.xy;
	
	
	
	//  wobble
    vec2 wobbl = vec2(0.003 * rand(vec2(u_time, v_vTexcoord.y)), 0.);
	
     //  band distortion
    float t_val = tan(0.25 * u_time + v_vTexcoord.y * PI * .67);
    vec2 tan_off = vec2(wobbl.x * min(0., t_val), 0.);
	
	
	 //  chromab
    vec4 color1 = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 color2 = texture2D(gm_BaseTexture, (v_vTexcoord) * 1.005);
    //  combine + grade
    vec4 color = vec4(color2.rg, pow(color1.b, .67), 1.);
    color.rgb = mix(texture2D(gm_BaseTexture, v_vTexcoord).rgb, color.rgb, 0.5);
    
    //  scanline sim
    float s_val =  ((sin(2. * PI * v_vTexcoord.y + u_time * 20.) + sin(2. * PI * v_vTexcoord.y)) / 2.)
        * .015 * sin(u_time);
    color += s_val;
	
	
	
	float vig = 1. - sin(PI * v_vTexcoord.x) * sin(PI * v_vTexcoord.y);
    
    
	
	gl_FragColor = color - (vig * 0.15);
	//gl_FragColor = vec4 (col, 1.0);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
