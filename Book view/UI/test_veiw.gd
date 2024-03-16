extends Control

@onready var textBox = $"Text Box"

func  change_text():
	#Changes textBox text
	textBox.display_text(TextManager.Current_Text)

