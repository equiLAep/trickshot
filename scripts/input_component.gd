class_name InputComponent extends Node


var move_dir: Vector2 = Vector2.ZERO
var jump_pressed := false
var running_pressed = false
var jump_velocity = 0
var jump_released = false

var kp1_pressed = false
var kp1_released = false
var kp1_double_tap = false

var kp2_pressed = false
var kp2_released = false
var kp2_double_tap = false

var kp3_pressed = false
var kp3_released = false
var kp3_double_tap = false

var kp4_pressed = false
var kp4_released = false
var kp4_double_tap = false

var kp5_pressed = false
var kp5_released = false
var kp5_double_tap = false

var kp6_pressed = false
var kp6_released = false
var kp6_double_tap = false

var kp7_pressed = false
var kp7_released = false
var kp7_double_tap = false

var kp8_pressed = false
var kp8_released = false
var kp8_double_tap = false

var kp9_pressed = false
var kp9_released = false
var kp9_double_tap = false

func update() -> void:
	move_dir = Input.get_vector("left","right","up","down")
	jump_pressed = Input.is_action_just_pressed("jump")
	jump_released = Input.is_action_just_released("jump")
	
	kp1_pressed = Input.is_action_pressed("kp1")
	kp1_released = Input.is_action_just_released("kp1")
	if Input.is_action_just_released("kp1"):
		kp1_pressed = false
		kp1_released = false
		kp1_double_tap = Input.is_action_just_pressed("kp1")
