extends Spatial

var ready = false
var masterPos = Vector3()

sync func _player_connected(id):
	print("player ", id, " connected to server")
	# if this is the host, update all clients'
	# dictionary of other connected clients
	if globals.isHost:
		rpc_id(id, "_get_albedo")
		for i in globals.otherPlayers:
			#rset("globals.otherPlayers", globals.otherPlayers)
			print("updating " + str(i))
			rpc("_update_player", i, globals.otherPlayers[i])
	# add this new id to game
	if id != get_tree().get_network_unique_id():
		print(id, " != ", get_tree().get_network_unique_id())
		var otherPlayer = preload("res://assets/Player.tscn").instance()
		otherPlayer.set_name(str(id))
		otherPlayer.set_network_master(id)
		add_child(otherPlayer)
		#get_tree().get_root().get_node(str(id) + "/Body/MeshInstance").get_surface_material(0).albedo_color = globals.otherPlayers[id]
	globals.loading = 1
	rpc_id(id, "_load_players")
	
remote func _get_albedo():
	# give everyone your id and color
	rpc("_receive_albedo", get_tree().get_network_unique_id(), globals.playerColor)
	
sync func _receive_albedo(id, color):
	globals.otherPlayers[id] = color

remote func _load_players():
	# add the players
	print("loading players")
	for id in globals.otherPlayers:
		print("adding node " + str(id))
		var otherPlayer = preload("res://assets/Player.tscn").instance()
		otherPlayer.set_name(str(id))
		otherPlayer.set_network_master(id)
		add_child(otherPlayer)
		#get_tree().get_root().get_node(str(id) + "/Body/MeshInstance").get_surface_material(0).albedo_color = globals.otherPlayers[id]
		if id == get_tree().get_network_unique_id():
			# this is the network master, set camera
			$Camera.current = false
			get_node(str(id) + "/Head/Camera").set_current(true)
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			# this isn't the network master, get its position
			# and put it in its proper place
			print("not net master, ", id)
			rpc_id(id, "_getMasterPos", get_tree().get_network_unique_id())
			get_node(str(id)).set_translation(masterPos)
	
remote func _update_player(id, color):
	print("received command to update: " + str(id))
	globals.otherPlayers[id] = color
	for i in globals.otherPlayers:
		print(i)
	
remote func _getMasterPos(id):
	var node = get_node(str(get_tree().get_network_unique_id()))
	rpc_id(id,"_receiveMasterPos",node.get_translation())
	
remote func _receiveMasterPos(pos):
	print(pos.x, " ", pos.y, " ", pos.z)
	masterPos = pos

func _ready():
	get_tree().connect("network_peer_connected", self, "_player_connected")
	OS.window_fullscreen = true
	if globals.isHost:
		print("adding node " + str(get_tree().get_network_unique_id()))
		var otherPlayer = preload("res://assets/Player.tscn").instance()
		otherPlayer.set_name(str(get_tree().get_network_unique_id()))
		otherPlayer.set_network_master(get_tree().get_network_unique_id())
		add_child(otherPlayer)
		$Camera.current = false
		get_node(str(get_tree().get_network_unique_id()) + "/Head/Camera").set_current(true)
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		#OS.window_fullscreen = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_quit"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().quit()
	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen


func _on_PlayArea_body_exited(body):
	#print(body.name, " is exiting")
	#rpc_unreliable("resetPos", body)
	body.set_translation(Vector3(0,0,0))
	#body.rotation = Vector3(0,0,0)
	#body.set_linear_velocity(Vector3(0,0,0))
