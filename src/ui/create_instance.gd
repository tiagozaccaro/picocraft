extends Button

@onready var minecraftInstance: TextEdit = $"../Form/Instance/MinecraftInstance"
@onready var minecraftVersion: ItemList = $"../Form/Version/MinecraftVersion"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _pressed() -> void:
	var version = MinecraftVersion.new()
	version.id = minecraftVersion.get_selected_items()[0]
	
	MinecraftManager.createNewInstance(minecraftInstance.text, version)
