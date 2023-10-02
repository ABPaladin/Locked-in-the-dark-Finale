extends Control

func _ready():
	$AudioStreamPlayer2D.play()

func _on_exit_pressed():
	$AudioStreamPlayer2D.stop()
	get_tree().quit()
