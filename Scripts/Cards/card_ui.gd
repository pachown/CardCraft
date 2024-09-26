class_name CardUI
extends Control

@export var card: Card : set = _set_card

const BASE_STYLEBOX := preload("res://Themes/card_base_stylebox.tres")
const DRAG_STYLEBOX := preload("res://Themes/card_dragging_stylebox.tres")
const HOVER_STYLEBOX := preload("res://Themes/card_hover_stylebox.tres")


signal reparent_requested(which_card_ui: CardUI)
@onready var panel = $Panel
@onready var cost = $TextContainer/Cost
@onready var sprite: Sprite2D = $CardImage
@onready var drop_point_detector = $DropPointDetector
@onready var card_state_machine: CardStateMachine = $CardStateMachine as CardStateMachine
@onready var targets: Array[Node] = []
@onready var card_name = $TextContainer/Name
@onready var attack = $TextContainer/Attack
@onready var production = $TextContainer/Production
@onready var speed = $TextContainer/Speed


var parent: Control
var tween: Tween

func _ready():
	card_state_machine.init(self)
	
func _input(event: InputEvent):
	card_state_machine.on_input(event)
	
func animate_to_position(new_position: Vector2, duration: float):
	tween = create_tween().set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "global_position", new_position, duration)
	
func _on_gui_input(event: InputEvent):
	card_state_machine.on_gui_input(event)
	
func _on_mouse_entered():
	card_state_machine.on_mouse_entered()
	
func _on_mouse_exited():
	card_state_machine.on_mouse_exited()
	
func _set_card(value: Card):
	if not is_node_ready():
		await ready
		
	card = value
	card_name.text = card.name
	sprite.texture = card.sprite
	attack.text = "Att: " + str(card.attack)
	cost.text = "Cost: " + str(card.cost)
	production.text = "Prod: " + str(card.production)
	speed.text = "Speed: " + str(card.speed)
	
	

func _on_drop_point_detector_area_entered(area):
	if not targets.has(area):
		targets.append(area)

func _on_drop_point_detector_area_exited(area):
	targets.erase(area)
