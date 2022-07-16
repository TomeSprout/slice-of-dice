extends Node2D


var num: int = 0
var anim_player: = $AnimationPlayer as AnimationPlayer


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	num += 1
	if num > 0:
		anim_player.play('CardFloat')
