extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	freeze_mode = 0
	add_to_group("asteroids")
	$AnimatedSprite2D.visible = false
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.

func asteroid_destroy():
	$Sprite2D.visible = false
	$AnimatedSprite2D.visible = true
	sleeping = true
	var a = $AnimatedSprite2D
	a.play("new_animation")
	pass

func _process(delta):
	pass


func _on_animated_sprite_2d_animation_finished():
	queue_free()
	pass # Replace with function body.
