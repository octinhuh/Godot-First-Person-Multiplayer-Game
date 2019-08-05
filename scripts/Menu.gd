extends Control

remote func _connected():
	var game = preload("res://assets/Level.tscn").instance()
	get_tree().get_root().add_child(game)
	hide()

func _ready():
	get_tree().connect("connected_to_server", self, "_connected")
	
	
func _on_HostButton_pressed():
	print("Hosting network")
	globals.isHost = true # this client is the host
	var peer = NetworkedMultiplayerENet.new()
	var res = peer.create_server(globals.port, globals.MAX_PLAYERS)
	if res != OK:
		print("Error creating server")
		return
	
	$JoinButton.hide()
	$HostButton.disabled = true
	get_tree().set_network_peer(peer)
	globals.playerColor = $ColorPicker.get_pick_color()
	globals.otherPlayers[get_tree().get_network_unique_id()] = globals.playerColor
	
	var game = preload("res://assets/Level.tscn").instance()
	get_tree().get_root().add_child(game)
	hide()

func _on_JoinButton_pressed():
	print("Joining network")
	globals.ip = $IPBar.text
	print(globals.ip)
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(globals.ip, globals.port)
	get_tree().set_network_peer(peer)
	$HostButton.hide()
	$JoinButton.disabled = true
	globals.playerColor = $ColorPicker.get_pick_color()


func _on_SenseSlider_value_changed(value):
	globals.sensitivity = value
	$SenseLabel.text = "Aim sensitivity: " + str(value)
