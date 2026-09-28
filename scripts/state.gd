extends Node


class_name State

@export var can_move: bool = true
var character : CharacterBody3D
var next_state: State
var input_component : InputComponent

func state_process(delta):
	pass


func on_enter():
	pass
	
func on_exit():
	pass
