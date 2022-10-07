extends Node2D

var enabled = false

func _ready():
	$FPS.pressed = Global.fps
	enabled = true


func _on_Creator_pressed():
	OS.shell_open("https://github.com/Jojonobody2")


func _on_Back_pressed():
	Global.change_scene_menu()


func _on_FPS_toggled(button_pressed):
	if(enabled):
		Global.fps = !Global.fps


func _on_Simon_pressed():
	OS.shell_open("https://www.instagram.com/simonlovesmtb")
