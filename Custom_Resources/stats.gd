class_name Stats
extends Resource

signal stats_changed

@export var total_attack := 0
@export var units := []
@export var workers:= [preload("res://Factions/Gothic/Cards/Worker.tres"), preload("res://Factions/Gothic/Cards/Worker.tres")]
@export var buildings := [preload("res://Factions/Gothic/Cards/Town.tres")]

var attack = set_attack(units, true)

func set_attack(u, home):
	var att_calc = 0
	if home:
		att_calc += 2
	for i in u:
		att_calc += u[i].Attack
	attack = att_calc
	stats_changed.emit()
	
func fight(attackers):
	var attackers_att = 0
	for i in attackers:
		attackers_att += attackers[i].Attack
	if attackers_att <= 2:
		attackers.clear()
		return
	if attackers_att > attack:
		location_death()
	calculate_losses(attackers, units)

func calculate_losses(enemyUnits, friendlyUnits):
		var defense_advantage = 2

func location_death():
	units.clear()
	buildings.clear()
	workers.clear()
