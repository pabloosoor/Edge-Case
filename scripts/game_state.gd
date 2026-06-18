extends Node
## Estado global de la partida (autoload "GameState").
## Fuente única de verdad para las variables narrativas del juego.
## Las decisiones de las escenas modifican estos valores.

# ¿Sigue vivo cada protagonista?
var vivo_detective: bool = true
var vivo_sintetico: bool = true
var vivo_allegado: bool = true

# Medidores narrativos.
var confianza: int = 0
var sospecha: int = 0
var verdad_reunida: int = 0


## Reinicia el estado a los valores de una partida nueva.
func nueva_partida() -> void:
	vivo_detective = true
	vivo_sintetico = true
	vivo_allegado = true
	confianza = 0
	sospecha = 0
	verdad_reunida = 0
