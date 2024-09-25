class_name CardUI
extends Control

@export var card: Card

signal reparent_requested(which_card_ui: CardUI)

@onready var sprite: Sprite2D = $Sprite2D
@onready var card_name: Label = $TextContainer/state
@onready var drop_point_detector = $DropPointDetector
@onready var card_state_machine: CardStateMachine = $CardStateMachine as CardStateMachine
@onready var targets: Array[Node] = []


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

func _on_drop_point_detector_area_entered(area):
	if not targets.has(area):
		targets.append(area)

func _on_drop_point_detector_area_exited(area):
	targets.erase(area)
