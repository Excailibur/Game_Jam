extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.velocity = Vector2(0,1.0)
	player.set_animation("Idle3")

func physics_process(_delta):
	if not player.is_on_floor():
		SM.set_state("Falling3")
	if player.is_moving():
		SM.set_state("Moving3")
	if Input.is_action_pressed("jump3"):
		SM.set_state("Jumping3")