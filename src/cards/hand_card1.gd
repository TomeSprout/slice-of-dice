extends Node2D


onready var _animation_player: = $AnimationPlayer as AnimationPlayer


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	if(_on_mouse_entered()):
		_animation_player.play('Card Float')
	if Input.is_action_just_pressed('ui_down'):
		_animation_player.play('Card Float')
	elif Input.is_action_just_pressed('ui_up'):
		_animation_player.play_backwards('Card Float')


func _on_mouse_entered() -> void:
	pass


func _on_mouse_exited() -> void:
	_animation_player.play_backwards('Card Float')
