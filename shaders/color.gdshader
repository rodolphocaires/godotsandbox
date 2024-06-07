shader_type canvas_item;

uniform sampler2D paper_texture;
uniform sampler2D paper_normal;
uniform float paper_influence: hint_range(0.0, 1.0) = 0.5;

void fragment() {
	vec4 original_color = texture(TEXTURE, UV);
	COLOR = mix(original_color, vec4(texture(paper_texture, SCREEN_UV).rgb, original_color.a), paper_influence);
	NORMAL_MAP = mix(NORMAL, texture(paper_normal, SCREEN_UV).xyz, paper_influence);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
