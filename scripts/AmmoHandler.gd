extends Node
class_name AmmoHandler

@export var ammo_label: Label
@export var weapon_handler: Node3D

enum ammo_type {
	BULLET,
	SMALL_BULLET
}

var ammo_storage := {
	ammo_type.BULLET: 10,
	ammo_type.SMALL_BULLET: 60
}

func has_ammo(type: ammo_type) -> bool:
	return ammo_storage[type] > 0

func use_ammo(type: ammo_type) -> void:
	if has_ammo(type):
		ammo_storage[type] -= 1
		update_ammo_label(weapon_handler.get_weapon_ammo())

func add_ammo(type: ammo_type, amount: int) -> void:
	ammo_storage[type] += amount
	update_ammo_label(weapon_handler.get_weapon_ammo())

func update_ammo_label(type: ammo_type) -> void:
	ammo_label.text = str(ammo_storage[type])
