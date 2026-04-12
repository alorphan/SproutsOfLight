extends Label

@export var session_length: Label
@export var break_length: Label

# TODO need to switch between focus and break sessions

var time_elapsed := 0.0
var timer_on := false
var on_break := false

func _ready():
	update_time_label(session_length.text.to_float() * 60)

func _process(delta: float) -> void:
	if timer_on:
		update_time_label(time_elapsed - delta)

		if time_elapsed <= 0:
			timer_on = false
			text = "00:00"

func format_time(time: float) -> String:
	var minutes := int(time) / 60
	var seconds := int(time) % 60
	return "%02d:%02d" % [minutes, seconds]

func update_time_label(new_time: float) -> void:
	time_elapsed = new_time
	text = format_time(time_elapsed)

func _on_start_button_pressed():
	timer_on = true

func _on_reset_button_pressed():
	update_time_label(session_length.text.to_float() * 60)
	timer_on = false

func _on_pause_button_pressed():
	timer_on = false

func _on_minus_session_button_pressed():
	session_length.text = str(max(1, session_length.text.to_int() - 1))
	update_time_label(session_length.text.to_float() * 60)

func _on_plus_sessionbutton_pressed():
	session_length.text = str(min(99, session_length.text.to_int() + 1))
	update_time_label(session_length.text.to_float() * 60)
