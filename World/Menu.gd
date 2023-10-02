extends Control

func _ready():
	$AudioStreamPlayer2D.play()
	
func _on_play_pressed():
	get_tree().change_scene_to_file("res://World/world.tscn")
	$AudioStreamPlayer2D.stop()
	
func _on_exit_pressed():
	get_tree().quit()

