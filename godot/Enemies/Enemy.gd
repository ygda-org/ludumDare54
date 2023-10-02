extends KinematicBody2D

export var speed = 400
export var direction = "x"
var velocity = Vector2.ZERO

func _ready():
	if direction == "x":
		velocity = Vector2(speed,0)



func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity *= -1



