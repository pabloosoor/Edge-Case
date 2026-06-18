extends Node

# estado de la partida, lo leo/escribo desde cualquier escena

var vivo_detective := true   # vive el detective
var vivo_sintetico := true   # vive el sintetico
var vivo_allegado := true    # vive el allegado

var confianza := 0
var sospecha := 0
var verdad_reunida := 0


func nueva_partida():
	# dejo todo como al arrancar
	vivo_detective = true
	vivo_sintetico = true
	vivo_allegado = true
	confianza = 0
	sospecha = 0
	verdad_reunida = 0
