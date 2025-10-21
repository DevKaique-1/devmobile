extends CharacterBody2D
var speed = 300

@onready var _animated_sprite = $AnimatedSprite2D 
func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)


func _process(_delta):
	if Input.is_action_pressed("ui_up"):
		_animated_sprite.play("up")
	else:
		_animated_sprite.stop()
	if Input.is_action_pressed("ui_left"):
		_animated_sprite.play("left")
	else:
		_animated_sprite.stop()
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play("right")
	else:
		_animated_sprite.stop()
	if Input.is_action_pressed("ui_down"):
		_animated_sprite.play("down")
	else:
		_animated_sprite.stop()
