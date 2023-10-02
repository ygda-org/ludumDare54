extends Control


func _ready():
	Globals.level = 0


func _on_TextureButton_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_Credits_pressed():
	get_tree().change_scene("res://UI/Credits.tscn")
