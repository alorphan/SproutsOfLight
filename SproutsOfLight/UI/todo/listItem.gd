extends HBoxContainer
signal increaseXP()

func _on_check_box_pressed():
	# send signal up to parent to update xp bar
	if ($CheckBox.button_pressed):
		emit_signal("increaseXP")

func _on_texture_button_pressed():
	queue_free()
