extends Node2D


# Hand inherits the position of parent (player)
# Extends out from that parent position by { radius } as a clamped max.
# Can be controlled with the mouse position or a right joystick
# beam extends from hand to shoot

# Temp zero'd vector
var body_pos: Vector2 = Vector2.ZERO

# Distance hand is away from body
@export var hand_radius: float = 40.0


func _ready() -> void:
	body_pos = get_parent().global_position

func _process(delta: float) -> void:
	position = get_local_mouse_position()
