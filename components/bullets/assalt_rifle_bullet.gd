extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_life_time_timeout():
	# Delete Bullet
	queue_free()
