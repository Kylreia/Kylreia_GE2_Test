@tool
extends Node3D

@export var length = 20
@export var frequency = 1
@export var start_angle = 0
@export var base_size = 1
@export var multiplier = 5

@export var radius:float = 2
@export var count = 19

func _process(delta):
	var boid = get_parent()
	DebugDraw3D.draw_sphere(boid.global_position, radius, Color.SKY_BLUE)
	DebugDraw3D.draw_sphere(boid.global_position, radius / 2, Color.FUCHSIA)

func _ready():
	if not Engine.is_editor_hint():		
		pass
	



