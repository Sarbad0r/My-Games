extends KinematicBody2D


var up = 200
var right = 10
var left = 10
var gravity = 400

var vel = Vector2()

onready var ImagePlayer = get_node("images")

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		vel.x -=  left
		
	elif Input.is_action_pressed("right"):
		vel.x += right
		
	vel.y += gravity * delta
		
	if Input.is_action_pressed("up") and is_on_floor():
		vel.y -= up

	vel = move_and_slide(vel, Vector2.UP)


	if vel.x > 0:
		ImagePlayer.flip_h = true
	if vel.x < 0:
		ImagePlayer.flip_h = false




# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
