extends CanvasLayer
@onready var speed_label = $VBoxContainer/speed_label
@onready var   position_label = $VBoxContainer/position_label
@onready var   state_label = $VBoxContainer/state_label
@onready var input_label = $VBoxContainer/input_label
@onready var input_component = $"../InputComponent"
@onready var state_machine = $"../CharacterStateMachine"
@onready var body = $".."
var body_position = Vector3()
var body_speed = Vector3()
var kp_state

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	body_position = body.global_position
	body_speed = body.velocity
	position_label.text = "x:%s, y:%s, z:%s" % [str(body_position.x), str(body_position.y), str(body_position.z)]
	speed_label.text = "vx:%s, vy:%s, vz:%s" % [str(body_speed.x), str(body_speed.y), str(body_speed.z)]
	input_label.text = get_kp_state()
	state_label.text = "State: " + state_machine.current_state.name
	pass

func get_kp_state():
	if input_component.kp1_pressed:
		if input_component.kp1_double_tap:
			return 'double_tap' 
			print("double_tap")
		else:
			return 'held' 
	if input_component.kp1_released:
		return 'released'
	if input_component.kp1_double_tap:
		return 'double_tap'  
	return "nothing"
