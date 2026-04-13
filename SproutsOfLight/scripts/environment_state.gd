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

@export var lushButton: bool:
	set(value):
		if value:
			change_state(state.LUSH)
		else:
			change_state(state.GROWING)
		lushButton = false

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
			if (lushTex == null):
				# Some objects don't have a lush state, so just use the growing texture
				texture = growingTex
			else:
				texture = lushTex
