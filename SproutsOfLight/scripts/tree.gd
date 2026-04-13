extends Sprite2D

@export var barrenTex : Texture
@export var growingTex : Texture
@export var lushTex : Texture

@export var growButton: bool:
	set(value):
		if value:
			change_state(state.GROWING)
		else:
			change_state(state.BARREN)
		growButton = false

enum state {
	BARREN,
	GROWING,
	LUSH
}

var _state = state.BARREN

func change_state(new_state: int) -> void:
	_state = new_state
	match _state:
		state.BARREN:
			texture = barrenTex
		state.GROWING:
			texture = growingTex
		state.LUSH:
			texture = lushTex
