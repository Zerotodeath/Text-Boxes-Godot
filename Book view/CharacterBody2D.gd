extends CharacterBody2D


func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -150
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 150
	else:
		velocity.x = 0
	
	
	if Input.is_action_pressed("ui_up"):
		velocity.y = -150
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 150
	else:
		velocity.y = 0
	move_and_slide()
	pass
