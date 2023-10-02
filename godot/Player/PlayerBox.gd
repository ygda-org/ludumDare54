extends Node2D

var Health = 2
var box_sprite = [preload("res://assets/box.png"), preload("res://assets/boxdamaged1.png"), preload("res://assets/boxdamaged2.png")]

var slingForce = Vector2(100,100)



func _process(delta):
	$RigidBody2D.apply_central_impulse(slingForce)

func damage():
	if(Health > 0):
		Health -= 1
		$RigidBody2D/Sprite.set_texture(box_sprite[2-Health])
