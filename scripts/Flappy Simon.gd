extends Node2D

var starttime = OS.get_system_time_msecs()
var currenttime = 0
var day = true

func _ready():
	if Global.fps:
		$fps.show()


func _process(delta):
	$fps.text = "FPS: " + str(Engine.get_frames_per_second())


func _physics_process(delta):
	$BgDay.position.x -= 5
	if($BgDay.position.x < -670):
		$BgDay.position.x = 2005
	$BgDay2.position.x -= 5
	if($BgDay2.position.x < -670):
		$BgDay2.position.x = 2005
	$BgNight.position.x -= 5
	if($BgNight.position.x < -670):
		$BgNight.position.x = 2005
	$BgNight2.position.x -= 5
	if($BgNight2.position.x < -670):
		$BgNight2.position.x = 2005
	
	if currenttime < 18000:
		currenttime = OS.get_system_time_msecs() - starttime
	else:
		day = !day
		if day:
			$SkyFade.play("fade_day")
		else:
			$SkyFade.play("fade_night")
		starttime = OS.get_system_time_msecs()
		currenttime = 0
