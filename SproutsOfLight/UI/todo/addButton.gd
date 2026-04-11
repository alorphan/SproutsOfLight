extends VBoxContainer

const LIST_ITEM_SCENE = preload("res://todo/list_item.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	# Add a list item 
	var new_item = LIST_ITEM_SCENE.instantiate()
	add_child(new_item)
	move_child(new_item, 0)
