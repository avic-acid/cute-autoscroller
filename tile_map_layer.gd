extends TileMapLayer
var t = 0
var lerpdir = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	t += delta * 0.1 * lerpdir
	if t >= 1:
		lerpdir = -1
	elif t <= 0:
		lerpdir = 1
	self.modulate = Color(1,1,1).lerp(Color(0.5,0.5,0.5), t)
