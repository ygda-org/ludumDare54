extends Node2D

var Health = 2
var box_sprite = [preload("res://assets/box.png"), preload("res://assets/boxdamaged1.png"), preload("res://assets/boxdamaged2.png")]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var slingForce = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	$RigidBody2D.apply_central_impulse(slingForce)
	"""
	if Input.is_action_just_pressed("ui_right"):
		$RigidBody2D.apply_central_impulse(Vector2(100, 0))
	if Input.is_action_just_pressed("ui_left"):
		$RigidBody2D.apply_central_impulse(Vector2(-100, 0))
	"""
func damage():
	if(Health > 0):
		Health -= 1
		$RigidBody2D/Sprite.set_texture(box_sprite[2-Health])
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
