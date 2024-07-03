extends Node2D

var value: int = 0

func _ready():
	%Label.text = str(value)
