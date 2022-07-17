extends Node2D


onready var anim_player: = $AnimationPlayer as AnimationPlayer
onready var snd_HandlePlayingCard: = $HandlePlayingCard as AudioStreamPlayer2D

var num: int = 0
var Sound = preload('res://src/sounds/playing_card_single_place_down_on_table.mp3')


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
#	play_sounds()
	pass
#	snd_HandlePlayingCard.play(0.0)


func _on_mouse_entered() -> void:
	anim_player.play('CardFloat')


func play_sounds() -> void:
	if (_on_mouse_entered()):
		if !snd_HandlePlayingCard.is_playing():
			snd_HandlePlayingCard.stream = Sound
			snd_HandlePlayingCard.play()
