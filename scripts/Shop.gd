extends Node2D

func _ready():
	$Money.text = str(Global.money) + " $"
	
	if Global.banana_item and Global.banana_item_bought:
		$"Button Banana".text = "Enabled"
	elif Global.banana_item_bought:
		$"Button Banana".text = "Disabled"
	if Global.bunny_ears_item and Global.bunny_ears_item_bought:
		$"Button BunnyEars".text = "Enabled"
	elif Global.bunny_ears_item_bought:
		$"Button BunnyEars".text = "Disabled"
	if Global.sunglasses_item and Global.sunglasses_item_bought:
		$"Button Sunglasses".text = "Enabled"
	elif Global.sunglasses_item_bought:
		$"Button Sunglasses".text = "Disabled"


func _on_Back_pressed():
	Global.change_scene_menu()


func _on_Button_Banana_pressed():
	if Global.money >= 50 and !Global.banana_item_bought:
		Global.money -= 50
		$Money.text = str(Global.money) + " $"
		Global.banana_item = true
		Global.banana_item_bought = true
		disable_bunny_ears()
		disable_sunglasses()
		$"Button Banana".text = "Enabled"
	elif Global.banana_item_bought:
		Global.banana_item = !Global.banana_item
		disable_bunny_ears()
		disable_sunglasses()
		if Global.banana_item:
			$"Button Banana".text = "Enabled"
		else:
			$"Button Banana".text = "Disabled"


func _on_Button_BunnyEars_pressed():
	if Global.money >= 100 and !Global.bunny_ears_item_bought:
		Global.money -= 100
		$Money.text = str(Global.money) + " $"
		Global.bunny_ears_item = true
		Global.bunny_ears_item_bought = true
		disable_banana()
		disable_sunglasses()
		$"Button BunnyEars".text = "Enabled"
	elif Global.bunny_ears_item_bought:
		Global.bunny_ears_item = !Global.bunny_ears_item
		disable_banana()
		disable_sunglasses()
		if Global.bunny_ears_item:
			$"Button BunnyEars".text = "Enabled"
		else:
			$"Button BunnyEars".text = "Disabled"


func _on_Button_Sunglasses_pressed():
	if Global.money >= 200 and !Global.sunglasses_item_bought:
		Global.money -= 200
		$Money.text = str(Global.money) + " $"
		Global.sunglasses_item = true
		Global.sunglasses_item_bought = true
		disable_banana()
		disable_bunny_ears()
		$"Button Sunglasses".text = "Enabled"
	elif Global.sunglasses_item_bought:
		Global.sunglasses_item = !Global.sunglasses_item
		disable_banana()
		disable_bunny_ears()
		if Global.sunglasses_item:
			$"Button Sunglasses".text = "Enabled"
		else:
			$"Button Sunglasses".text = "Disabled"


func disable_banana():
	Global.banana_item = false
	if Global.banana_item_bought:
		$"Button Banana".text = "Disabled"

func disable_bunny_ears():
	Global.bunny_ears_item = false
	if Global.bunny_ears_item_bought:
		$"Button BunnyEars".text = "Disabled"


func disable_sunglasses():
	Global.sunglasses_item = false
	if Global.sunglasses_item_bought:
		$"Button Sunglasses".text = "Disabled"

