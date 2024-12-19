GameBoyFiltter_ADDON to GODOT

Addon for godot that adds 6 materials that simulate the color palettes of a Game Boy Color in Red, Green and Blue, as well as a 
customizable material that can switch between these 3 colors in execution.

Steps to use the addon
Download the zip file GitHub (https://github.com/juriel1/GameBoyFiltter_ADDON.git in addon branch) or at Itch.io (https://uriel1231.itch.io/shader-filter-to-gmb-colors-rgb-godot).

In your GODOT project create an Addons folder and extract the contents.

Go to -> Project -> Project Settings -> Plugins.

Activate the plugin GameBoyFilter.

**Available assets**

	Shader (source code)**
-Blue_3D
-Blue_Filter
-Green_3D
-Green_Filter
-Red_3D
-Red_Filter
-Rgb_select_3D
-Rgb_select_Filter

	Materials (for use)**
-Blue_3D
-Blue_Filter
-Green_3D
-Green_Filter
-Red_3D
-Red_Filter
-Rgb_select_3D
-Rgb_select_Filter

**How to use it**

For direct use on objects with the MeshInstance3D node, assign materials of the 3D type:
-Blue_3D
-Green_3D
-Red_3D
-Rgb_select_3D

To use it as a filter throughout the view, create a ColorRect node and assign it the materials of the Filter type.
-Blue_Filter
-Green_Filter
-Red_Filter
-Rgb_select_Filter

Shader Params that you can and should use in execution

**On_shader ** Type : Bool
Available in : All materials

var mesh : MeshInstance3D
var shader : ShaderMaterial
shader = mesh.material_override
shader.set_shader_parameter("On_shader",[])

Or

var mesh : MeshInstance3D
var shader : ShaderMaterial
shader = mesh.material_overlay
shader.set_shader_parameter("On_shader",[])

Color_palette Type : Int
Available in : Materials with SELECT in your name

var mesh : MeshInstance3D
var shader : ShaderMaterial
shader = mesh.material_override
shader.set_shader_parameter("Color_palette",[])

Or

var mesh : MeshInstance3D
var shader : ShaderMaterial
shader = mesh.material_overlay
shader.set_shader_parameter("Color_palette",[])