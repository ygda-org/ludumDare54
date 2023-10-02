extends Node2D

var direction = 0

func _ready():
	direction = int(randf() * 3) 
	self.rotation_degrees = 90 * direction
	var spawnSize = get_parent().rect_size
	var spawnX = randf() * (spawnSize.x - $ReferenceRect.rect_size.x)  + $ReferenceRect.rect_size.x/2
	var spawnY = randf() * (spawnSize.y - $ReferenceRect.rect_size.x)  + $ReferenceRect.rect_size.x/2
	if direction == 0:
		spawnY = spawnSize.y
	if direction == 1:
		spawnX = 0
	if direction == 2:
		spawnY = 0
	if direction == 3:
		spawnX = spawnSize.x
	set_position(Vector2(spawnX, spawnY))

func _on_Area2D_body_entered(body):
	if "RigidBody2D" in body.name:
		body.get_parent().damage() # Replace with function body.
		var prev_direction = direction
		while prev_direction == direction:
			direction = int(randf() * 3) 
		self.rotation_degrees = 90 * direction
		var spawnSize = get_parent().rect_size
		var spawnX = randf() * (spawnSize.x - $ReferenceRect.rect_size.x)  + $ReferenceRect.rect_size.x/2
		var spawnY = randf() * (spawnSize.y - $ReferenceRect.rect_size.x)  + $ReferenceRect.rect_size.x/2
		if direction == 0:
			spawnY = spawnSize.y
		if direction == 1:
			spawnX = 0
		if direction == 2:
			spawnY = 0
		if direction == 3:
			spawnX = spawnSize.x
		set_position(Vector2(spawnX, spawnY))
