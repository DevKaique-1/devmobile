extends Node2D
@onready var _animated_sprite = $AnimatedSprite2D 
 
func _ready():
	_animated_sprite.play("idle")
	

func _process(_delta):
	if Input.is_action_pressed("ui_up"):
		_animated_sprite.play("run")
	else:
		_animated_sprite.stop()
