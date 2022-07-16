extends Node2D


onready var _animation_player: = $AnimationPlayer as AnimationPlayer


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if Input.is_action_just_pressed('ui_down'):
		_animation_player.play('Card Float')
	elif Input.is_action_just_pressed('ui_up'):
		_animation_player.play_backwards('Card Float')


func _on_mouse_entered() -> void:
	_animation_player.play('Card Float')


func _on_mouse_exited() -> void:
	_animation_player.play_backwards('Card Float')
