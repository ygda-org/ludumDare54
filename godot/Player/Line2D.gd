extends Line2D

onready var playerbox := get_parent().get_node("PlayerBox")
var vec_start := Vector2.ZERO
var vec_end := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	if Input.is_action_just_pressed("click"):
		vec_start = get_global_mouse_position() 
		vec_end = vec_start
		points[0] = vec_start - playerbox.global_position
	if Input.is_action_pressed(("click")):
		vec_end = get_global_mouse_position()
		points[1] = vec_end - playerbox.global_position
	if Input.is_action_just_released("click"):
		playerbox.slingForce = (vec_start-vec_end)/10
		$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	 playerbox.slingForce = Vector2.ZERO # Replace with function body.
