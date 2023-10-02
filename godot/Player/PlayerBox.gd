extends Node2D

var Health = 2
var box_sprite = [preload("res://assets/box.png"), preload("res://assets/boxdamaged1.png"), preload("res://assets/boxdamaged2.png")]

var slingForce = Vector2.ZERO


func _ready():
	get_parent().get_parent().get_child(4).get_child(1).text = str("Level: ", Globals.level + 1)
	$RigidBody2D/AnimatedSprite.hide()

func slingshot():
	$RigidBody2D.apply_central_impulse(slingForce)


func damage():


	if(Health > 0):
		Health -= 1
		$RigidBody2D/Sprite.set_texture(box_sprite[2-Health])
	elif(Health == 0):
		$RigidBody2D/Sprite.set_texture(box_sprite[0])
		Health = 2
		Globals.level += 1
		$RigidBody2D/Sprite.hide()
		$RigidBody2D/AnimatedSprite.show()
		$RigidBody2D/AnimatedSprite.play("default")
		$Timer.start()
		


func _on_Area2D_body_entered(body):
	pass


func _on_Timer_timeout():
	get_tree().reload_current_scene() # Replace with function body.
