extends Node2D

@onready var UI = $"CanvasLayer/Test Veiw"

var textShowing = false

func  _ready():
	_text_showing()

#Controls whether text box is showing
func _text_showing():
	UI.change_text()
	if textShowing:
		UI.show()
		Engine.time_scale = 0
		textShowing = false
	else:
		UI.hide()
		Engine.time_scale = 1
		textShowing = true
	

#Singal to trigger text box
func _on_text_cube_clicked():
	_text_showing()

