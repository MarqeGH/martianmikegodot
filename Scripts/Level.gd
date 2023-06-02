extends Node2D

@onready var startPosition = $StartPosition

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("quit_game"):
		get_tree().quit()
	elif Input.is_action_just_pressed("reset_game"):
		get_tree().reload_current_scene()


func _on_deathzone_body_entered(body):
	body.velocity = Vector2.ZERO
	body.global_position = startPosition.global_position
