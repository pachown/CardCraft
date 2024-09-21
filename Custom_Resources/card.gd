class_name Card
extends Resource

enum Type {Unit, Building, Strategem}

enum Target {SELF, LOCATION, WORKER}

@export_group("Card Attributes")
@export var name: String
@export var type: Type
@export var attack: int
@export var defense: int
@export var attack_range: int
@export var cost: int
@export var production: int
@export var speed: int
@export var sprite: String
@export var tooltip: String
@export var target: Target

func is_location_targeted() -> bool:
	return target == Target.LOCATION
