extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	pass
	
	
	


func _on_tren_body_entered(body):
	print(body)
	body.pills += 1
	queue_free()
