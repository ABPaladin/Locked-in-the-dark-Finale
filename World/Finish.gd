extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Nothing here for now
	pass

# Called when a body enters the area.
func _on_body_entered(body):
	if body.name == "Player":
		print("Collision with Player detected")
		get_tree().change_scene("res://World/end.tscn")
