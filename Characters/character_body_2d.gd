extends CharacterBody2D


func _physics_process(delta):
	player_movement(delta)
const speed=200
const speed2=400
var current_dir="none"
var a=0

#ruszanie się
func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		current_dir="right"
		velocity.x=speed

	elif Input.is_action_pressed("ui_left"):
		current_dir="left"
		velocity.x=-speed
	elif Input.is_action_pressed("ui_up"):
		current_dir="up"
		velocity.y=-speed
	elif Input.is_action_pressed("ui_down"):
		current_dir="down"
		velocity.y=speed
	else:
		velocity.x=0
		velocity.y=0
		
	move_and_slide()
var dir=current_dir
