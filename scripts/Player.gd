extends KinematicBody

var camera_angle = 0
var mouse_multiplier = .05
const VIEW_LIMIT = 90 # maximum vertical angle of camera

var direction = Vector3()
var velocity = Vector3()
const WALK_SPEED = 15
const RUN_SPEED = 25
const ACCEL = 10
const DEACCEL = 7
const JUMP_VEL = 15
const G = -9.8 * 3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	walk(delta)

func _input(event):
	if is_network_master():
		if event is InputEventMouseMotion:
			$Head.rotate_y(deg2rad(-event.relative.x * mouse_multiplier * globals.sensitivity))
			var vertChange = -event.relative.y * mouse_multiplier * globals.sensitivity
			if vertChange + camera_angle < 90 and vertChange + camera_angle > -90:
				$Head/Camera.rotate_x(deg2rad(vertChange))
				camera_angle += vertChange
			rpc_unreliable("_set_aim", $Head.get_rotation(), $Head/Camera.get_rotation())
			
sync func _set_aim(rot, vert):
	$Head.set_rotation(rot)
	$Head/Camera.set_rotation(vert)
			
sync func _set_translation(xlat):
	set_translation(xlat)

func walk(delta):
	# resetting direction
	direction = Vector3()
	
	if is_network_master():
	
		# get rotation of camera
		var aim = $Head/Camera.get_global_transform().basis
	
		# get inputs
		if Input.is_action_pressed("move_left"):
			direction -= aim.x
		if Input.is_action_pressed("move_right"):
			direction += aim.x
		if Input.is_action_pressed("move_forward"):
			direction -= aim.z
		if Input.is_action_pressed("move_backward"):
			direction += aim.z
		
		direction = direction.normalized()
	
		velocity.y += G * delta
	
		var temp_velocity = velocity
		temp_velocity.y = 0 # resetting vertical
	
		var speed
		if Input.is_action_pressed("move_run") and Input.is_action_pressed("move_forward"):
			speed = RUN_SPEED
		else:
			speed = WALK_SPEED
		
		# where player would be going at max speed
		var target = direction * speed
	
		# dot product is negative if not same direction
		var acceleration
		if direction.dot(temp_velocity) > 0:
			acceleration = ACCEL
		else:
			acceleration = DEACCEL
		
		# calculate portion of distance to go
		temp_velocity = temp_velocity.linear_interpolate(target, acceleration * delta)
		velocity.x = temp_velocity.x
		velocity.z = temp_velocity.z
	
		# move
		velocity = move_and_slide(velocity, Vector3(0,1,0))
		rpc_unreliable("_set_translation", get_translation())
	
		# jump
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VEL