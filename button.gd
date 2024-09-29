#extends Button
#
#@onready var start_button = $Button as Button
#@onready var startlevel = preload("res://pipes_game.tscn")
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#self.button_down.connect(on_button_down)
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#
#func on_button_down() -> void:
	#get_tree().
	#Global.retry = false
	#self.visible = false
#
#func _process(delta: float) -> void:
	#if Global.retry == true:
		#print("asd")
		#self.visible = true
