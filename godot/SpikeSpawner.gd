extends ReferenceRect



func _ready():
	for i in range(Globals.level):
		var enemy = preload("res://Enemies/Enemy.tscn")
		add_child(enemy.instance())

