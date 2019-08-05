extends Node

var ip
var port = 27015
var isHost = false
var numClients
remote var otherPlayers = {} # (id, color)
var playerCount = 0 # the number of otherPlayers (not including self)
var playerColor
var sensitivity = 1
var loading = 0 # for debugging

const MAX_PLAYERS = 10