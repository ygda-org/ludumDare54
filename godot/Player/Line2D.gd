extends Line2D

onready var playerbox := get_parent().get_node("PlayerBox")
var vec_start := Vector2.ZERO
var vec_end := Vector2.ZERO
var flag = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	#print(playerbox.get_node("RigidBody2D").position.x)
	var boxPosition = playerbox.get_node("RigidBody2D/Position2D").global_position
	var boxSize = playerbox.get_node("ReferenceRect").rect_size 
	if Input.is_action_just_pressed("click"):
		vec_start = get_global_mouse_position() 
		if(vec_start.x >= boxPosition.x - boxSize.x/2 and vec_start.x <= boxPosition.x + boxSize.x/2) and (vec_start.y >= boxPosition.y - boxSize.y/2 and vec_start.y <= boxPosition.y + boxSize.y/2):
			flag = true
			vec_end = vec_start
			points[0] = vec_start - playerbox.global_position + Vector2(40, 40)
	if Input.is_action_pressed(("click")) and flag == true:
		vec_end = get_global_mouse_position()
		points[1] = vec_end - playerbox.global_position + Vector2(40, 40)
	if Input.is_action_just_released("click") and flag == true:
		playerbox.slingForce = (vec_start-vec_end)*2 
		$Timer.start()
		points[0] = Vector2.ZERO
		points[1] = Vector2.ZERO
		flag = false
		
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	 playerbox.slingForce = Vector2.ZERO # Replace with function body.
	 #playerbox.find_node("ReferenceRect").rect_position.x = playerbox.position.x
	 #playerbox.find_node("ReferenceRect").rect_position.y = playerbox.position.y

