extends Node2D

func _on_Normal_Mode_pressed():
	Global.hard = false
	Global.running = true
	Global.change_scene_ingame()


func _on_Hard_Mode_pressed():
	Global.hard = true
	Global.running = true
	Global.change_scene_ingame()
