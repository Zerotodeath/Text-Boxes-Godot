extends MarginContainer

@onready var label = $VBoxContainer/Label

const MAX_WIDTH = 640

var text = ""
var letter_index = 0


func display_text(text_to_display : String):
	text = text_to_display
	label.text = text_to_display
	
	#await resized
	custom_minimum_size.x = min(size.x, MAX_WIDTH)
	
	if size.x > MAX_WIDTH:
		label.autowrap_mode = TextServer.AUTOWRAP_WORD
		#await resized
		#await resized
		custom_minimum_size.y = size.y
		
