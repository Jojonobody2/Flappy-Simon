extends Node2D

func _on_Shop_pressed():
	Global.change_scene_shop()


func _on_Settings_pressed():
	Global.change_scene_settings()


func _on_Play_pressed():
	Global.change_scene_play_menu()
