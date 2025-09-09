extends Control

func _on_timer_timeout() -> void:
	$TextureProgressBar.value +=1
	pass


func _on_button_pressed() -> void:
	$TextureProgressBar.value += 10 # Replace with function body.
	pass
