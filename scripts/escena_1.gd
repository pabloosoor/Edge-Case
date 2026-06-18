extends Control
## Escena 1: la detective llega al laboratorio de la víctima.
## Lanza la timeline de Dialogic, reacciona a la decisión y vuelve al menú.

func _ready() -> void:
	# TODO: reemplazar el ColorRect oscuro "FondoLaboratorio" por la ilustración del laboratorio.
	Dialogic.timeline_ended.connect(_al_terminar)
	Dialogic.signal_event.connect(_al_recibir_senal)
	Dialogic.start("escena_1")


## Reacciona a la decisión ramificada y actualiza el estado del juego.
func _al_recibir_senal(argumento: Variant) -> void:
	match argumento:
		"sospecha_arriba":
			GameState.sospecha += 1
		"confianza_arriba":
			GameState.confianza += 1


## Al terminar la timeline, desconecta y vuelve limpiamente al menú principal.
func _al_terminar() -> void:
	if Dialogic.timeline_ended.is_connected(_al_terminar):
		Dialogic.timeline_ended.disconnect(_al_terminar)
	if Dialogic.signal_event.is_connected(_al_recibir_senal):
		Dialogic.signal_event.disconnect(_al_recibir_senal)
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
