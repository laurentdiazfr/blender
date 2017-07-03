uniform int stroke_type;
uniform sampler2D myTexture;

in vec4 mColor;
in vec2 mTexCoord;
out vec4 fragColor;

#define texture2D texture

void main()
{
//	vec2 centered = gl_PointCoord - vec2(0.5);
	vec2 centered = mTexCoord - vec2(0.5);
	float dist_squared = dot(centered, centered);
	const float rad_squared = 0.25;

	// round point with jaggy edges
	if (dist_squared > rad_squared)
		discard;

	fragColor = mColor;
}
