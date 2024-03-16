class_name textItem
extends Area2D

@export var id: String
signal clicked

func _process(delta):
	_detect_player()

#Detects whether the player is in bounds
func _detect_player():
	for i in get_overlapping_bodies():
		if i.name == "Player":
			_get_inputs()

#Gets input to show text
func _get_inputs() -> void:
	if Input.is_action_just_pressed("ui_accept"):
		TextManager._text(StaticData.itemData[id]["text"]) #Changes the current text box text
		emit_signal("clicked") #Sends signal whenever the test box is clicked
