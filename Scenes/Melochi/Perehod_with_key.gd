extends Area2D

var is_can = false
@export var change_scene = ""
@export var change_x = 0
@export var change_y = 0

func  _physics_process(delta):
	if is_can == true && Input.is_action_just_pressed("jump"):
		get_tree().change_scene_to_file(change_scene)
		$"../Player".x = change_x
		$"../Player".y = change_y

func _on_body_entered(body):
	is_can = true
	$Label.show()

func _on_body_exited(body):
	is_can = false
	$Label.hide()
