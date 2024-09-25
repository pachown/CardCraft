class_name Location
extends Control

@onready var location_stats_ui = $LocationStatsUI as LocationStatsUI
@onready var background: Sprite2D = $Background
@onready var glow: Sprite2D = $Glow

@export var location_stats: LocationStats : set = set_location_stats

func set_location_stats(value: LocationStats):
	location_stats = value.create_instance()
#
#	if not location_stats.update_stats.is_connected(update_stats):
#		location_stats.update_stats.connect(update_stats)
	
	update_location()
	
func update_stats():
	location_stats_ui.update_stats(location_stats)
	
func update_location():
	if not location_stats is LocationStats:
		return
	if not is_inside_tree():
		await ready
	update_stats()
