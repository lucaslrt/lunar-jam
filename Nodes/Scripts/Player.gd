extends Area2D

export(int) var SPEED = 60
# export(int) var hp = 1
# const GRAVITY = 10
# const JUMP_FORCE = -250
# const FLOOR = Vector2(0, -1)

# const FIREBALL = preload("res://Nodes/Prefabs/Fireball.tscn")

var velocity = Vector2()
var on_ground = false
var is_attacking = false
var is_dead = false
var fireball_power = 1
var jump_count = 0

func _ready() -> void:
	#adjust_camera_limits()
	pass

func _physics_process(delta: float) -> void:

	if !is_dead:
		if Input.is_action_pressed("ui_right"):
			print("Direita")
		elif Input.is_action_pressed("ui_left"):
			print("Esquerda")
		if Input.is_action_pressed("ui_up"):
			print("Cima")
		elif Input.is_action_pressed("ui_down"):
			print("Baixo")

		if Input.is_action_just_pressed("ui_focus_next") and !is_attacking:
			print("Poder")
	pass

func dead():
	pass
