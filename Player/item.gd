extends Area2D

# Reference to the progress bar in the same scene
var progressBar 

func _ready():
	# Find the progress bar node within the same scene
	progressBar = get_node("/root/World/CanvasLayer/ProgressBar")  # Adjust the path to match your hierarchy

func _on_body_entered(body):
	if body.name == "Player":
		# Check if the progress bar reference exists
		if progressBar:
			# Add 10 seconds to the current time (assuming you want to add 10 seconds)
			progressBar.totalTime -= 2  # Corrected the property name
			print("Progress bar found!")
		else:
			# If the progress bar reference doesn't exist, print a message for debugging
			print("Progress bar not found!")

		# Remove the object
		queue_free()
