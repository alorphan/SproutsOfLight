extends Node2D

@export var hose: AnimatedSprite2D
@export var des : AnimatedSprite2D
@export var splash: AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	hose.play("default")
	des.play("default")
	splash.play("default")
