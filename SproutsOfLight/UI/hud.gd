extends CanvasLayer

@onready var todo = get_node("ToDo")
@onready var XPBar = get_node("XPBar")

# Called when the node enters the scene tree for the first time.
func _ready():
	todo.increaseXP.connect(_on_list_item_increase_xp)

func _on_list_item_increase_xp(value):
	XPBar.get_node("TextureProgressBar").value += value

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
