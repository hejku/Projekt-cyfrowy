extends Control

var seconds=0
var minutes=0
var Dseconds=0
var Dminutes=15


func _ready():
	Reset_Timer()
	pass


func _on_Timer_timeout():
	if seconds==0:
		if minutes > 0:
			minutes-= 1
			seconds = 60
	seconds-=1

	$Label.text=String(minutes)+":"+String(seconds)
	pass
func Reset_Timer():
	seconds= Dseconds
	minutes = Dminutes
	
	
	
