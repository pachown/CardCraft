class_name Card
extends Resource

enum Type {UNIT, BUILDING, STRATEGEM}

enum Target {SEEN, LOCATION, PRODUCTION}

@export_group("Card Attributes")
@export var name: String
@export var type: Type 
@export var attack: int
@export var defense: int
@export var attack_range: int
@export var cost: int
@export var production: int
@export var speed: int
@export var sprite: Texture
@export var tooltip: String
@export var target: Target 
@export var owner: String

@export_group("Card Visuals")
@export_multiline var tooltip_text: String


func is_location_targeted() -> bool:
	return target == Target.LOCATION
	
func is_seen_targeted() -> bool:
	return target == Target.SEEN
	
func is_production_targeted() -> bool:
	return target == Target.PRODUCTION
