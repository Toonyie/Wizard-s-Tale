class_name State
extends Node

@export var animation_name: String
@export var movement_speed: float = 100.0
@export var sprint_increase: float = 1.5

var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")

var parent: CharacterBody2D

func enter() -> void:
	parent.animations.play(animation_name)

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	if Input.is_action_pressed("sprint"):
		movement_speed *= sprint_increase
	if Input.is_action_just_released("sprint"):
		movement_speed /= sprint_increase
	return null

func process_physics(delta: float) -> State:
	return null

func process_frame(delta: float) -> State:
	return null
