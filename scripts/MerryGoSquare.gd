extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	constant_angular_velocity = Vector3(0,1,0)


func _process(delta):
	$MeshInstance.rotate_y(1 * delta)
	#rotate_y(10*delta)
