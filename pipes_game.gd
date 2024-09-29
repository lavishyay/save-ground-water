extends Node2D

var nextgame = preload("res://watertrop.tscn")
var water_wasted = 0
func _ready() -> void:
	var resource = preload("res://ooo.dialogue")
	DialogueManager.show_dialogue_balloon(resource, "this_is_a_node_title")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.pipe == 7:
		await get_tree().create_timer(2).timeout
		#get_tree().change_scene_to_packed(nextgame)
