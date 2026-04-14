extends Node2D

signal worldStateChanged(new_state)

enum state {
	BARREN,
	GROWING,
	LUSH
}

@export var commonSprites : Array[Sprite2D]
@export var charactersBarren : Node2D
@export var charactersGrowing : Node2D
@export var waterAnimation: AnimatedSprite2D
@export var charactersLush : Node2D
@export var worldState : state:
	set(value):
		transitionWorldState(value)
		worldState = value

func transitionWorldState(new_state: int) -> void:
	emit_signal("worldStateChanged", new_state)

	for sprite in commonSprites:
		match new_state:
			state.BARREN:
				sprite.texture = sprite.barrenTex
				charactersBarren.visible = true
				charactersGrowing.visible = false
				charactersLush.visible = false
				waterAnimation.visible = false
			state.GROWING:
				sprite.texture = sprite.growingTex
				charactersBarren.visible = false
				charactersGrowing.visible = true
				charactersLush.visible = false
				waterAnimation.visible = true
			state.LUSH:
				charactersLush.visible = true
				charactersBarren.visible = false
				charactersGrowing.visible = false
				waterAnimation.visible = false

				if (sprite.lushTex == null):
					# Some objects don't have a lush state, so just use the growing texture
					sprite.texture = sprite.growingTex
				else:
					sprite.texture = sprite.lushTex
