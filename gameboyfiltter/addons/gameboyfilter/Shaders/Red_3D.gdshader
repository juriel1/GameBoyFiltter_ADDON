shader_type spatial;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_linear_mipmap;

uniform vec3 darknesColor_ = vec3(0.22, 0.06, 0.06);
uniform vec3 darkColor_ = vec3(0.4, 0.2, 0.2);
uniform vec3 ligthColor_ = vec3(0.6, 0.05, 0.49);
uniform vec3 ligthesColor_ = vec3(0.7, 0.05, 0.6);

uniform bool On_shader;

void fragment() {
    vec3 textureColor = texture(screen_texture, SCREEN_UV).xyz;

    if (On_shader) {
        if (textureColor.x < 0.3 && textureColor.y < 0.3) {
            ALBEDO = darknesColor_;
        } else if (textureColor.x < 0.5 && textureColor.y < 0.5) {
            ALBEDO = darkColor_;
        } else if (textureColor.x > 0.5 && textureColor.y > 0.5 && textureColor.z > 0.5) {
            ALBEDO = ligthesColor_;
        } else {
            ALBEDO = ligthColor_;
        }
    } else {
        ALBEDO = textureColor;
    }
}