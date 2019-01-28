//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;

// Rand functions
float random1(float p) { return fract(sin(p * 127.1) * 437.53) * 2.0 - 1.0; }

float random3(vec3 p) {
  return fract(sin(dot(p, vec3(127.1, 311.7, 231.4))) * 437.53) * 2.0 - 1.0;
}



void main()
{
	float texColorAlpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	vec2 res = vec2(30.0, 44.0);
	
	vec2 p = vec2(v_vTexcoord.x,v_vTexcoord.y) ;
    p.x += mix(random3(vec3(p.x - mod(p.x + 1.0, random1(p.y)), p.y, u_time)), 0.0, 0.999 + exp(-30.5 * random1(u_time - mod(u_time, 0.01))));
				   
  vec3 color = texture2D(gm_BaseTexture, vec2(p.x, p.y)).rgb;
  //vec2(p.x, p.y)
  gl_FragColor = v_vColour * vec4(color, texColorAlpha);
  
}
