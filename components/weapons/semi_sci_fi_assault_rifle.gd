extends XRToolsPickable

@export var bullet : PackedScene
@export var bullet_speed : float = 10.0

var can_fire = true

func action():
	super.action()
	
	if can_fire:
		_spawn_bullet()
		can_fire = false
		$Cooldown.start()
		
func _spawn_bullet():
	if bullet:
		var new_bullet : RigidBody3D = bullet.instantiate()
		if new_bullet:
			owner.add_child(new_bullet)
			new_bullet.transform = $SpawnPoint.global_transform
			new_bullet.linear_velocity = $SpawnPoint.global_transform.basis.x * bullet_speed
			
func _on_cooldown_timeout():
	can_fire = true
