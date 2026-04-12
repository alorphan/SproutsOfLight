extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_to_do_button_pressed():
	$ToDo.visible = !$ToDo.visible
	$FocusTimer.visible = false
	$Compendium.visible = false

func _on_clock_button_pressed():
	$FocusTimer.visible = !$FocusTimer.visible
	$ToDo.visible = false
	$Compendium.visible = false


func _on_compendium_button_pressed():
	$Compendium.visible = !$Compendium.visible
	$ToDo.visible = false
	$FocusTimer.visible = false
