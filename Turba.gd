extends RigidBody2D

export var min_speed = 150
export var max_speed = 250

var mob_types = ["walk", "swin", "fly"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	

func _on_Visibilidade_screen_exited():
	queue_free()
