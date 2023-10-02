extends Area2D

# Reference to the progress bar in the same scene
var progressBar
var timeSubtracted = false  # Declare and initialize timeSubtracted variable
var timeIncreased = false  # Declare and initialize timeIncreased variable

func _ready():
	# Find the progress bar node within the same scene
	progressBar = get_node("/root/World/CanvasLayer/ProgressBar")  # Adjust the path to match your hierarchy

func _on_body_entered(body):
	if body.name == "Player":
		# Check if the progress bar reference exists
		if progressBar:
			# Check if the time has not already been increased
			if !timeIncreased:
				# Add 10 seconds to the current time (assuming you want to add 10 seconds only once)
				progressBar.totalTime -= 5
				timeIncreased = true  # Set the flag to true to indicate that time has been increased

				print("Progress bar found!")
		else:
			# If the progress bar reference doesn't exist, print a message for debugging
			print("Progress bar not found!")

		# Remove the object
		queue_free()
