extends RigidBody

remote func _update_box_pos(pos, rot):
	set_translation(pos)
	set_rotation(rot)
	
remote func _get_box_pos(id):
	if globals.isHost:
		# only host owns reliable position
		rpc_unreliable_id(id, "_update_box_pos", get_translation(), get_rotation())
		pass

# Called when the node enters the scene tree for the first time.
func _ready():
	rpc_unreliable("_get_box_pos", get_tree().get_network_unique_id())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _physics_process(delta):
	#rpc_unreliable("_update_box_pos", get_translation(), get_rotation())
	#pass
