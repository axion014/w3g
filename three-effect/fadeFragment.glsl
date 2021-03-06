
uniform vec4 color;
uniform sampler2D tDiffuse;

varying vec2 vUv;

void main() {
	vec4 t = texture2D(tDiffuse, vUv);
	gl_FragColor = vec4(t.rgb * (1. - color.a) + color.rgb * color.a, t.a);
}
