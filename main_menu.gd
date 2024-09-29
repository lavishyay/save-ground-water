extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Button3 as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Button2 as Button
@onready var startlevel = preload("res://pipes_game.tscn")
@onready var dropleleve = preload("res://node_2d.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_button.button_down.connect(on_button_down)
	exit_button.button_down.connect(on_exit_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func on_button_down() -> void:
	get_tree().change_scene_to_packed(startlevel)
	
func on_exit_pressed() -> void:
	get_tree().quit()
