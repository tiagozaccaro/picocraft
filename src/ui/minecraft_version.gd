extends ItemList

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var versions := MinecraftManager.getMinecraftVersions()
	
	for i in versions.size():
		super.add_item(versions[i].id)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
