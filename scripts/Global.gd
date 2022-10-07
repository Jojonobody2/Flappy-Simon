extends Node

onready var ingame = load("scenes/Flappy Simon.tscn")
onready var menu = load("scenes/Main Menu.tscn")
onready var settings = load("scenes/Settings.tscn")
onready var death_screen = load("scenes/Death Screen.tscn")
onready var play_menu = load("scenes/Play Menu.tscn")
onready var shop = load("scenes/Shop.tscn")

var running = false
var score = 0
var highscore = 0
var highscore_hard = 0
var speed = 1
var hard = false
var money = 0
var fps = false

var banana_item = false
var banana_item_bought = false

var bunny_ears_item = false
var bunny_ears_item_bought = false

var sunglasses_item = false
var sunglasses_item_bought = false

func _process(delta):
	if Input.is_action_just_pressed("fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen


func change_scene_ingame():
	get_tree().change_scene_to(ingame)


func change_scene_menu():
	get_tree().change_scene_to(menu)


func change_scene_settings():
	get_tree().change_scene_to(settings)


func change_scene_death_screen():
	get_tree().change_scene_to(death_screen)


func change_scene_play_menu():
	get_tree().change_scene_to(play_menu)


func change_scene_shop():
	get_tree().change_scene_to(shop)
