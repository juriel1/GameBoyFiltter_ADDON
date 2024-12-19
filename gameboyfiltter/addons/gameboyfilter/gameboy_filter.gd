@tool
extends EditorPlugin


func _enter_tree() -> void:
	print("Game Boy Filter ON")


func _exit_tree() -> void:
	print("Game Boy Filter OFF")
