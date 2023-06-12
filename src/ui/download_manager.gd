extends Control

@onready var minecraftManager : MinecraftManager

func _on_download_status(value: float):
	$VBoxContainer/DownloadProgress.value = value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	minecraftManager.download_status.connect(_on_download_status)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
