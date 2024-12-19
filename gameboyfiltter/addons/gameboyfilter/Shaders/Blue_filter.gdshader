shader_type canvas_item;

// Declarar la textura de pantalla con hint_screen_texture
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;

// Colores de la paleta
uniform vec3 darknesColor_ = vec3(0.06, 0.06, 0.22);
uniform vec3 darkColor_  = vec3(0.2, 0.2, 0.4);
uniform vec3 ligthColor_  = vec3(0.05, 0.48, 0.6);
uniform vec3 ligthesColor_  = vec3(0.05, 0.6, 0.7);

// Activar o desactivar el filtro
uniform bool On_shader = true;

void fragment() {
    // Obtener el color de la textura de pantalla
    vec3 textureColor = texture(screen_texture, SCREEN_UV).rgb;

    if (On_shader) {
        if (textureColor.x < 0.3 && textureColor.y < 0.3) {
            COLOR = vec4(darknesColor_, 1.0);
        } else if (textureColor.x < 0.5 && textureColor.y < 0.5) {
            COLOR = vec4(darkColor_, 1.0);
        } else if (textureColor.x > 0.5 && textureColor.y > 0.5 && textureColor.z > 0.5) {
            COLOR = vec4(ligthesColor_, 1.0);
        } else {
            COLOR = vec4(ligthColor_, 1.0);
        }
    } else {
        COLOR = vec4(textureColor, 1.0);
    }
}
