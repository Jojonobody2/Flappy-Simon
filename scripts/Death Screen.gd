extends Node2D

var death_messages = ["Maybe Click?", "...", "What?", "Lol", "Noob", "Loser", "Fortnite!", "You ded Lol", "ded?"]

func _ready():
	randomize_text()


func _on_Retry_pressed():
	Global.score = 0
	Global.speed = 1
	Global.running = true
	Global.change_scene_ingame()


func _on_Main_Menu_pressed():
	Global.score = 0
	Global.speed = 1
	Global.change_scene_menu()


func randomize_text():
	var death_text = death_messages[randi() % death_messages.size()]
	$Label.text = death_text
