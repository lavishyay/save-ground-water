extends Label

var format_string = "Wasted water: %s"
var form_string = "Water saved: %s"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.pipe != 7:
		text = format_string % str(Global.wasted_waater)
		set("theme_override_colors/font_color", Color.RED)
		self.text = text
	else:
		set("theme_override_colors/font_color", Color.WEB_GREEN)
		self.text = form_string % str(Global.water_saved)
		
