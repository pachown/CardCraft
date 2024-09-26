class_name LocationStatsUI
extends VBoxContainer
var location_sprite = preload("res://Scenes/Locations/location_sprite.tscn")

@onready var building_container = $BuildingContainer
@onready var unit_container = $UnitContainer
@onready var worker_container = $WorkerContainer

func update_stats(stats: Stats):
	for i in building_container.get_children():
		i.queue_free()
	for i in unit_container.get_children():
		i.queue_free()
	for i in worker_container.get_children():
		i.queue_free()
	for i in stats.buildings:
		var instance = location_sprite.instantiate()
		building_container.add_child(instance)
		instance.texture = i.sprite
	for i in stats.units:
		var instance = location_sprite.instantiate()
		unit_container.add_child(instance)
		instance.texture = i.sprite
	for i in stats.workers:
		var instance = location_sprite.instantiate()
		worker_container.add_child(instance)
		instance.texture = i.sprite
