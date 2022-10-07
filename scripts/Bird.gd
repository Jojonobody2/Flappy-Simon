extends KinematicBody2D

var velocity = Vector2()

var jump = false

var max_gravity = 400
var gravity = 50
var jump_power = 900
var min_gravity = -600

func _ready():
	if(Global.hard):
		get_node("/root/Flappy Simon/GUI/HighscoreLabel").text = "Highscore: " + str(Global.highscore_hard)
	else:
		get_node("/root/Flappy Simon/GUI/HighscoreLabel").text = "Highscore: " + str(Global.highscore)
	
	if Global.banana_item:
		$Banana.show()
	elif Global.bunny_ears_item:
		$BunnyEars.show()
	elif Global.sunglasses_item:
		$Sunglasses.show()


func _physics_process(_delta):
	if velocity.y < max_gravity:
		velocity.y += gravity
	if velocity.y < min_gravity:
		velocity.y = min_gravity
	
	if Input.is_action_just_pressed("jump"):
		jump = true
	
	if global_position.y - 42 < 0 or global_position.y + 42 > 720:
		die()
	
	if jump:
		jump = false
		$AnimationPlayer.play("flap")
		velocity.y -= jump_power
	
	move_and_slide(velocity, Vector2.UP)


func _on_Area2D_area_entered(area):
	if(area.name == "a1" or area.name == "a2"):
		die()
	elif(area.name == "score_detector"):
		Global.score += 1
		get_node("/root/Flappy Simon/GUI/ScoreLabel").text = "Score: " + str(Global.score)


func die():
	if Global.hard and Global.highscore_hard < Global.score:
		Global.highscore_hard = Global.score
	elif !Global.hard and Global.highscore < Global.score:
		Global.highscore = Global.score
	Global.money += Global.score
	Global.change_scene_death_screen()


func _on_jump_pressed():
	jump = true
