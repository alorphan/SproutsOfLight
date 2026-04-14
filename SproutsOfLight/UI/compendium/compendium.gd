extends Control

@export var itemIcon : TextureRect
@export var itemName : Label
@export var itemDescription : RichTextLabel

const PATH_TO_ITEM_DATA = "res://items/"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func update_item_display_from_resource(resourcePath):
	var itemData = load(resourcePath)
	print("Loaded item data: ", itemData)
	itemIcon.texture = itemData.icon
	itemName.text = itemData.name
	itemDescription.text = itemData.description

func _on_grass_butt_pressed():
	update_item_display_from_resource(PATH_TO_ITEM_DATA + "bentlium.tres")

func _on_des_butt_pressed():
	update_item_display_from_resource(PATH_TO_ITEM_DATA + "des.tres")


func _on_language_frag_butt_pressed():
	update_item_display_from_resource(PATH_TO_ITEM_DATA + "stoneFragment.tres")
