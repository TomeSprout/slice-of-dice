extends Node2D


onready var anim_player: = $AnimationPlayer as AnimationPlayer
onready var snd_HandlePlayingCard: = $HandlePlayingCard as AudioStreamPlayer2D
onready var TestSound: = $SoundHandleCard as AudioStreamPlayer

var num: int = 0
var Sound = preload('res://src/sounds/playing_card_single_place_down_on_table.mp3')


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed('ui_down'):
		anim_player.play('Card Float')
	elif Input.is_action_just_pressed('ui_up'):
		anim_player.play_backwards('Card Float')


func _on_button_pressed() -> void:
#	get_tree().change_scene("res://src/stages/stage_main.tscn")
	pass # Replace with function body.


func _on_mouse_entered() -> void:
	anim_player.play('CardFloat')
	TestSound.play()


func play_sounds() -> void:
	TestSound.play()
	TestSound.stop()
#	if (_on_mouse_entered()):
#		if !snd_HandlePlayingCard.is_playing():
#			snd_HandlePlayingCard.stream = Sound
#			snd_HandlePlayingCard.play()

