extends Control


func _ready():
	# TODO: reemplazar el ColorRect oscuro "FondoLaboratorio" por la ilustracion del laboratorio
	Dialogic.timeline_ended.connect(_al_terminar)
	Dialogic.signal_event.connect(_al_recibir_senal)
	Dialogic.start("escena_1")


func _al_recibir_senal(argumento):
	# segun la opcion que eligio, muevo una variable
	match argumento:
		"sospecha_arriba":
			GameState.sospecha += 1
		"confianza_arriba":
			GameState.confianza += 1


func _al_terminar():
	# desconecto asi no queda enganchado al volver al menu
	if Dialogic.timeline_ended.is_connected(_al_terminar):
		Dialogic.timeline_ended.disconnect(_al_terminar)
	if Dialogic.signal_event.is_connected(_al_recibir_senal):
		Dialogic.signal_event.disconnect(_al_recibir_senal)
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
