extends Node


var pipe = 0
var wasted_waater = 0
var water_saved = 0
var retry = false
func _ready() -> void:
	await get_tree().create_timer(15).timeout
	while true:
		await get_tree().create_timer(1).timeout
		if pipe != 7:
			wasted_waater += 10
		else:
			water_saved += 10
