class_name Stats
extends Resource

signal stats_changed

@export var total_attack := 0
@export var units : Array[Card] = []
@export var workers : Array[Card] = []
@export var buildings: Array[Card] = []

var attack = set_attack()

func set_attack():
	var att_calc = 0
	for i in units:
		att_calc += units[i].attack
	for i in buildings:
		att_calc += buildings[i].attack
	attack = att_calc
	stats_changed.emit(self)
	
func location_death():
	units.clear()
	buildings.clear()
	workers.clear()
	
func create_instance() -> Resource:
	var instance: Stats = self.duplicate()
	return instance
