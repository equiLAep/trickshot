class_name ShadowDown extends Node
@export var shadow_ray: RayCast3D
@export var shadow_sprite: Sprite3D



func tick(delta: float) -> void:
	if shadow_ray.is_colliding():
		var shadow_position = shadow_ray.get_collision_point()
		shadow_sprite.global_position = shadow_position + Vector3(0,0.1,0)
	
