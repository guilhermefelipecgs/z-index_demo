extends KinematicBody2D

var lv : Vector2

func _physics_process(delta):
	var dir : Vector2

	if Input.is_action_pressed("ui_up"):
		dir.y = -1
	if Input.is_action_pressed("ui_down"):
		dir.y = 1
	if Input.is_action_pressed("ui_left"):
		dir.x = -1
	if Input.is_action_pressed("ui_right"):
		dir.x = 1

	move_and_slide(dir * 100)