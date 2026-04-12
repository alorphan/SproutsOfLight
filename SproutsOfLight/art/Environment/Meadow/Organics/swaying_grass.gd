extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D

@export var skewValue := 15
@export var windSpeed := 2.0
@export var windStrength := 0.6
@export var bendGrassAnimationSpeed = 0.3
@export var grassReturnAnimationSpeed = 5.0

var _wind_tween: Tween
func _ready() -> void:
	_start_wind()
	
func _start_wind() -> void:
	_wind_tween = create_tween().set_loops()
	
	var peak := skewValue * windStrength
	var half := windSpeed / 2.0
	
	#Sway right
	_wind_tween.tween_property(
		sprite_2d.material,
		"shader_parameter/skew",
		peak,
		half
	).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
	
	#Sway right
	_wind_tween.tween_property(
		sprite_2d.material,
		"shader_parameter/skew",
		-peak,
		half
	).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
