extends Control


func _ready():
	# arranco con Nueva partida ya seleccionada
	$Centro/OpcionesWrap/Opciones/NuevaPartida.grab_focus()


func _on_nueva_partida_pressed():
	GameState.nueva_partida()
	get_tree().change_scene_to_file("res://scenes/escena_1.tscn")


func _on_continuar_pressed():
	pass # TODO: cargar partida guardada


func _on_escenas_pressed():
	pass # TODO: selector de escenas


func _on_opciones_pressed():
	pass # TODO: pantalla de opciones


func _on_salir_pressed():
	get_tree().quit()
