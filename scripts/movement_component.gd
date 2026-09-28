class_name MovementComponent extends Node
@export var _camera_pivot: Node3D
@export var body: CharacterBody3D
@export var speed = 8

var direction: Vector3 =  Vector3.ZERO
var want_jump = false

func tick(delta: float) -> void:
	if body == null:
		return
		
	#movement
	body.velocity = direction * speed
	body.move_and_slide()
	
