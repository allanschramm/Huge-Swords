extends Node2D

@export var regeneration_amout: int = 10

func _ready():
	$Area2D.body_entered.connect(on_body_entered)
	
func on_body_entered(body: Node2D):
	if body.is_in_group("player"):
		var player: Player = body
		player.heal(regeneration_amout)
		player.meat_collected.emit(regeneration_amout)
		queue_free()
