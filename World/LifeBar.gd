extends ProgressBar

var totalTime = 30  # Total countdown time in seconds
var currentTime = 30  # Current countdown time, initially set to the total time

func _ready():
	$Timer.start()  # Start the timer when the scene loads

func _process(delta):
	# Calculate the percentage of time remaining and set it as the progress bar value
	set_value(100 * currentTime / totalTime)
	
	# Check if the countdown has reached zero
	if currentTime <= 0:
		$Timer.stop()
		print("Countdown complete.")
	else:
		currentTime -= delta

func _on_Timer_timeout():
	# Decrease the current time by 1 second when the timer fires
	currentTime -= 1
