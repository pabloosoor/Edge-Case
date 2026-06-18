extends Control

# las tres lineas del logo, cada color es un protagonista
const AZUL := Color("3e5c7e")    # detective
const AMBAR := Color("c0801f")   # sintetico
const ARCILLA := Color("b05a39") # allegado
const TINTA := Color("1c1e24")


func _draw():
	# punto donde se juntan las tres lineas
	var vertice := Vector2(size.x * 0.5, size.y - 6.0)
	var separacion := 92.0
	var alto := 92.0

	var fin_izq := vertice + Vector2(-separacion, -alto)
	var fin_centro := vertice + Vector2(0.0, -alto - 8.0)
	var fin_der := vertice + Vector2(separacion, -alto)

	var grosor := 2.5
	draw_line(vertice, fin_izq, AZUL, grosor, true)
	draw_line(vertice, fin_centro, AMBAR, grosor, true)
	draw_line(vertice, fin_der, ARCILLA, grosor, true)

	# puntitos de las puntas
	var radio := 5.0
	draw_circle(fin_izq, radio, AZUL)
	draw_circle(fin_centro, radio, AMBAR)
	draw_circle(fin_der, radio, ARCILLA)
	draw_circle(vertice, 6.5, TINTA)
