extends Node

var menu = null

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		print("escape/menu pressed")
		if menu == null:
			menu = get_node_or_null("/root/Game/UI/Menu")
			print("menu now exists")
		if menu != null:
			print("menu isnt null")
			if not menu.visible:
				get_tree().paused = true
				menu.show()
				print("menu is visible")
			else:
				get_tree().paused = false
				print("menu is invisible")
				menu.hide()
