extends CollisionShape2D

var dragging = false

signal dragsignal

func _ready() -> void:
	# Updated connect syntax for Godot 4
	connect("dragsignal", _set_drag_pc)

func _process(delta: float) -> void:
	pass
	if !dragging:
		var mousepos = get_viewport().get_mouse_position()
		self.position = mousepos

func _set_drag_pc() -> void:
	dragging = !dragging

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		print(event.button_index)
		if event.button_index == 1:
			if event.pressed:
				emit_signal("dragsignal")
			else:
				emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.index == 0:
			self.position = event.position


func _on_dragsignal() -> void:
	if !dragging:
		var mousepos = get_viewport().get_mouse_position()
		self.position = mousepos
