extends CharacterBody2D

var dragging = false
var perma = false
var settled = false
signal dragsignal

func _ready() -> void:
	self.position = Vector2(850,300)
	# Updated connect syntax for Godot 4
	connect("dragsignal", _set_drag_pc)

func _process(delta: float) -> void:
	if self.position.x >= 700 && self.position.y >= 410:
		if self.position.x <= 820 && self.position.y <= 510:
			self.position = Vector2(761,461)
			perma = true
			if settled == false:
				$AudioStreamPlayer2D.play()
				Global.pipe += 1
				settled = true
		else:
			_change_pos()
	else:
		_change_pos()

func _change_pos() -> void:
	if dragging:
		var mousepos = get_viewport().get_mouse_position()
		self.position.x = mousepos.x
		self.position.y = mousepos.y
		print(self.position)
		print(mousepos)
func _set_drag_pc() -> void:
	dragging = !dragging

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if perma == true:
		pass
	else:	
		if event is InputEventMouseButton:
			print(event.button_index)
			print(event)
			if event.button_index == 1:
				if event.pressed:
					emit_signal("dragsignal")
				else:
					emit_signal("dragsignal")
		elif event is InputEventScreenTouch:
			if event.pressed and event.index == 0:
				self.position = event.position
