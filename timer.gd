extends Timer

var drop = preload("res://watertrop.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timeout() -> void:
	randomize()
	var drip = drop.instantiate()
	drip.position = Vector2(randi_range(10,500), randi_range(10,500))
	drip.velocity.y = 100
	add_child(drip)
	wait_time = randi_range(0,1)
