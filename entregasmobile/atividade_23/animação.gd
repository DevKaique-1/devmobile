extends Node2D
@onready var _animated_sprite = $AnimatedSprite2D
func _process(_delta):
	if Input.is_action_just_pressed("ui_aceept"):
		_animated_sprite.play("run")
	else:
		_animated_sprite.stop()
