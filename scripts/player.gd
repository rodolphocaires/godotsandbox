extends CharacterBody2D

var colorRect

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 600
	
	if Input.is_action_just_pressed("color"):
		print("color")
	
	
	move_and_slide()
