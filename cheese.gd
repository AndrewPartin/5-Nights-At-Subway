extends RigidBody3D

var throw = false

const DAMAGE = 100
const SPEED = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	top_level = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if throw:
		apply_impulse(transform.basis.z, -transform.basis.z * SPEED)

"""
func _on_Area_body_entered(body):
	if body.is_in_group("enemy"):
		body.health -= DAMAGE
	
	queue_free()
	
"""

