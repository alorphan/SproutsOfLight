extends Control

signal increaseXP(value)

func _on_list_item_increase_xp():
	emit_signal("increaseXP", 20)
