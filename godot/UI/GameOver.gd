extends Control


func _ready():
	$Score.text = str("Score: ", Globals.level)


func _on_Back_pressed():
	get_tree().change_scene("res://UI/MainMenu.tscn")
