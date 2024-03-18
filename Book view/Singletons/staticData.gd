extends Node

var itemData = {}

var data_file_path = "res://JSON/Untitled spreadsheet - Sheet1.json"

func _ready():
	itemData = load_json(data_file_path)


func load_json(filePath : String):
	if FileAccess.file_exists(filePath):
		
		var dataFile = FileAccess.open(filePath, FileAccess.READ)
		var parsedResult = JSON.parse_string(dataFile.get_as_text())
		
		if parsedResult is Dictionary:
			return parsedResult
		else:
			print("YOU GOT SO CLOSE")
		
		pass
	else:
		print("NO")
