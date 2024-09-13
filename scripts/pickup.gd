extends Area3D

@export var ammo_type: AmmoHandler.ammo_type
@export var amount: int = 20

func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		body.ammo_handler.add_ammo(ammo_type, amount)
		queue_free()
