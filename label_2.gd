extends Label

var node_path = ^"Button"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.wasted_waater <= 200:
		if Global.pipe == 7:
			#$AudioStreamPlayer2D.play()
			self.text = str("You Win!")
	else:
		Global.retry = true
		self.text = str("You Lost :(")
