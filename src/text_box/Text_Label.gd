# Code Order
#
# tool
# class_name
# extends
# docstring
#
# signals
# enums
# constants
# exported variables
# private variables
# onready variables
#
# optional built-in virtual _init method
# built-in virtual _ready method
# remaining built-in virtual methods
# public methods
# private methods


extends Label


var drawTextSpeed: int = 0
var drawTextLimit: int = 1000


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	text_manip()
	show_text_scroll()


func show_text_scroll() -> void:
	if drawTextSpeed < drawTextLimit:
		drawTextSpeed += 1
		self.visible_characters = drawTextSpeed
#		yield(get_tree().create_timer(1000.0), "timeout")


func text_manip() -> void:
	self.text = GamepathTextStore.text_p0_intro_01
