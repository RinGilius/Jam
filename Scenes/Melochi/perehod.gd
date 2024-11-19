extends Area2D

@export var change_scene = ""
@export var change_x = 0
@export var change_y = 0

func _on_body_entered(body):
	get_tree().change_scene_to_file(change_scene)
	$"../Player".x = change_x
	$"../Player".y = change_y
