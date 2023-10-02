extends Node2D




func _on_Back_pressed():
	get_tree().change_scene("res://UI/MainMenu.tscn")

func _process(delta):
	$Control/Time.text = str("Time: ", int($Control/Time/Timer.time_left))


func _on_Timer_timeout():
	get_tree().change_scene("res://UI/GameOver.tscn")
