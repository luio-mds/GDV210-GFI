varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_GrayscaleAmount; // 1 = gray, 0 = color

void main()
{
	vec4 original_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	float gray = 
		original_color.r * 0.299 + 
		original_color.g * 0.587 + 
		original_color.b * 0.114;
	
	float luma = dot(original_color.rgb, vec3(0.299, 0.587, 0.144));

	vec4 grayscale_color = vec4(luma, luma, luma, original_color.a);
	
	gl_FragColor = mix(original_color, grayscale_color, u_GrayscaleAmount);
}