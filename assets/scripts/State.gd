class_name State
extends Node

@export var animation_name: String
@export var movement_speed: float = 100.0
@export var sprint_increase: float = 1.5

var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")

var parent: CharacterBody2D

@onready var normal_speed: float = movement_speed
@onready var sprint_speed: float = movement_speed * sprint_increase

func enter() -> void:
	parent.animations.play(animation_name)

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_physics(delta: float) -> State:
	return null

func process_frame(delta: float) -> State:
	$"../../Label".text = str(movement_speed)
	return null
