extends Control
var temp = 0;
func _on_timer_timeout() -> void:
	$TextureProgressBar.value +=1
	
	pass


func _on_button_pressed() -> void:
	$TextureProgressBar.value += 10 # Replace with function body.
	pass


func _on_texture_progress_bar_value_changed(value: float) -> void:
	if value >= $TextureProgressBar.max_value:
		
		$TextureProgressBar.max_value  = $TextureProgressBar.max_value *1.2
		$TextureProgressBar.value = 0
		$TextureProgressBar/Label.text = str(int($TextureProgressBar/Label.text) +1)
		temp += 1
		if temp == 1:
			$CPUParticles2D.emitting = true
			temp = 0
			pass
		if temp == 0:
			$CPUParticles2D.emitting = false
			pass
		pass
	pass
	pass # Replace with function body.
