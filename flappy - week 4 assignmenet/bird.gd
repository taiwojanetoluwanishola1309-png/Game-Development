extends CharacterBody2D
@export var gravity : float = 980.0
@export var speed: float = 300.0
@export var jump_force: float = 800.0
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	var direction:= Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed 
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_force
		print("Jumping with: ", jump_force)
	move_and_slide()
