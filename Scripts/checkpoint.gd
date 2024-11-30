extends Area2D

var vida = 2

func _ready() -> void:
	var animatedSprite = get_child(0) as AnimatedSprite2D
	animatedSprite.animation = "NoFlag"
	animatedSprite.play()


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var animatedSprite = get_child(0) as AnimatedSprite2D
		animatedSprite.animation = "FlagOut"
		animatedSprite.play()


func _on_animated_sprite_2d_animation_finished() -> void:
	var animatedSprite = get_child(0) as AnimatedSprite2D
	animatedSprite.animation = "FlagIdle"
	animatedSprite.play()
