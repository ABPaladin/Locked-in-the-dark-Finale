extends ProgressBar

var totalTime = 30  # Общее количество секунд
var currentTime = 30  # Текущее количество секунд, начнем с максимального значения

func _ready():
	$Timer.start()  # Запустить таймер при загрузке

func _process(delta):
	# Обновить прогресс-бар
	set_value(currentTime / totalTime * 100)
	
	# Проверить, завершился ли отсчет времени
	if currentTime <= 0:
		$Timer.stop()
		print("Отсчет времени завершен.")
	else:
		currentTime -= delta

func _on_Timer_timeout():
	# Уменьшить текущее время на 1 секунду при каждом срабатывании таймера
	currentTime -= 1
