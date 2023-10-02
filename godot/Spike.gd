extends Node2D





func _on_Area2D_body_entered(body):
	if "RigidBody2D" in body.name:
		body.get_parent().damage() # Replace with function body.
