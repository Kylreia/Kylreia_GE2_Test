@tool
extends Node3D

@export var length = 20
@export var frequency = 1
@export var start_angle = 0
@export var base_size = 1
@export var multiplier = 5

@export var radius:float = 2

var headScene
var bodyScene

func _process(delta):
	on_draw_gizmos()

func _ready():
	if not Engine.is_editor_hint():		
		headScene = load("res://behaviors/Head.tscn")
		bodyScene = load("res://behaviors/Body.tscn")
		
		var pos_count = 6
		for i in 8:
			var body = bodyScene.instantiate()
			body.transform.origin = Vector3(0,0,pos_count)
			add_child(body)
			pos_count += 1.5
	

func on_draw_gizmos():
	var target = get_node("Target")
	DebugDraw3D.draw_sphere(target.global_position, radius, Color.SKY_BLUE)
	DebugDraw3D.draw_sphere(target.global_position, radius / 2, Color.FUCHSIA)

