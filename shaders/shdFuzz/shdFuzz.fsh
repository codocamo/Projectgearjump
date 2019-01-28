//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;

// Rand one-liner
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
	
	// Time varying pixel color
   // vec3 col = 0.5 + 0.5 * cos (u_time + uv.xyx + vec3 (0, 2, 4));
    vec3 col = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)).rgb;;
	
    // If time is in glitch state, 
    if (rand (vec2 (u_time, u_time)) > 0.9) 
    {
        float noise = rand (v_vTexcoord * u_time);
        col *= vec3 (noise, noise, noise);
    }
	gl_FragColor = vec4 (col, 1.0);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
