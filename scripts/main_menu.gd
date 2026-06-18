extends Control
## Menú principal de Edge Case.

func _ready() -> void:
	$Centro/OpcionesWrap/Opciones/NuevaPartida.grab_focus()


func _on_nueva_partida_pressed() -> void:
	GameState.nueva_partida()
	get_tree().change_scene_to_file("res://scenes/escena_1.tscn")


func _on_continuar_pressed() -> void:
	pass # TODO: cargar partida guardada


func _on_escenas_pressed() -> void:
	pass # TODO: selector de escenas


func _on_opciones_pressed() -> void:
	pass # TODO: pantalla de opciones


func _on_salir_pressed() -> void:
	get_tree().quit()
