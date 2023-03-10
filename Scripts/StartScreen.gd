extends Node2D

var selected_menu = 0

func change_menu_color():
	$NewGame.color = Color.gray
	$Quit.color = Color.gray
	
	match selected_menu:
		0:
			$NewGame.color = Color.turquoise
		1:
			$Quit.color = Color.turquoise

func _ready():
	change_menu_color()

func _input(event):
	if Input.is_action_just_pressed("ui_down"):
		selected_menu = (selected_menu + 1) % 3;
		change_menu_color()
	elif Input.is_action_just_pressed("ui_up"):
		if selected_menu > 0:
			selected_menu = selected_menu - 1
		else:
			selected_menu = 2
		change_menu_color()
	elif Input.is_action_just_pressed("ui_accept"):
		match selected_menu:
			0:
				# New game
				#get_tree().change_scene("res://Scenes/Main.tscn")
				pass
			1:
			# Back to start screen
				get_tree().quit(3)

