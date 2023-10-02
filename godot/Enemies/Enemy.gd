extends KinematicBody2D

export var speed = 400

var velocity = Vector2.ZERO

func _ready():
	randomize()
	var spawnSize = get_parent().rect_size
	var spawnX = randf() * spawnSize.x
	var spawnY = randf() * spawnSize.y

	set_position(Vector2(spawnX, spawnY))

	var r = randi()%2
	print(r)
	if r == 0:
		velocity = Vector2(speed,0)
	else:
		velocity = Vector2(0,speed)




func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity *= -1



