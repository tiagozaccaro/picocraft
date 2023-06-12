var _pojLib = null
var _client_id = "56dc4bcc-fa0b-4f1d-8c80-8f0b28974001"

signal finished_downloading(value: bool)
signal current_download(value: String)
signal msa_message(value: String)
signal ignore_instance_name(value: bool)
signal custom_ram_value(value: bool)
signal download_status(value: float)
signal profile_image(value: String)
signal profile_name(value: String)
signal memory_value(value: String)
signal developer_mods(value: bool)
signal advanced_debugger(value: bool)


func _on_finished_downloading(value: bool):
	finished_downloading.emit(value)


func _on_current_download(value: String):
	current_download.emit(value)


func _on_msa_message(value: String):
	msa_message.emit(value)


func _on_ignore_instance_name(value: bool):
	ignore_instance_name.emit(value)


func _on_custom_ram_value(value: bool):
	custom_ram_value.emit(value)


func _on_download_status(value: float):
	download_status.emit(value)


func _on_profile_image(value: String):
	profile_image.emit(value)


func _on_profile_name(value: String):
	profile_name.emit(value)


func _on_memory_value(value: String):
	memory_value.emit(value)


func _on_developer_mods(value: bool):
	developer_mods.emit(value)


func _on_advanced_debugger(value: bool):
	advanced_debugger.emit(value)


# Minecraft Functions
func getMinecraftVersions() -> Array[MinecraftVersion]:
	return _pojLib.getMinecraftVersions()


func createNewInstance(name: String, minecraftVersion: MinecraftVersion) -> MinecraftInstance:
	return _pojLib.createNewInstance(name, minecraftVersion)


func login() -> MinecraftAccount:
	return _pojLib.login(_client_id)


func launchInstance(name: String) -> void:
	_pojLib.launchInstance(name, _client_id)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Engine.has_singleton("pojlib"):
		_pojLib = Engine.get_singleton("pojlib")

		_pojLib.finished_downloading.connect(_on_finished_downloading)
		_pojLib.current_download.connect(_on_current_download)
		_pojLib.msa_message.connect(_on_msa_message)
		_pojLib.ignore_instance_name.connect(_on_ignore_instance_name)
		_pojLib.custom_ram_value.connect(_on_custom_ram_value)
		_pojLib.download_status.connect(_on_download_status)
		_pojLib.profile_image.connect(_on_profile_image)
		_pojLib.profile_name.connect(_on_profile_name)
		_pojLib.memory_value.connect(_on_memory_value)
		_pojLib.developer_mods.connect(_on_developer_mods)
		_pojLib.advanced_debugger.connect(_on_advanced_debugger)
