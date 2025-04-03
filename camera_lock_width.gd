extends Camera2D

# For making the cursor appear different on a control node: https://docs.godotengine.org/en/stable/classes/class_control.html#class-control-property-mouse-default-cursor-shape

var cursor_arrow = load("res://cursor_arrow.png")

func _ready() -> void:
	
	get_tree().get_root().size_changed.connect(resize)
	resize()
	
	Input.set_custom_mouse_cursor(cursor_arrow, Input.CursorShape.CURSOR_ARROW, Vector2(0, 0))

func resize() -> void:
	var z := get_window().size.y / 1200.0
	zoom.x = z
	zoom.y = z
