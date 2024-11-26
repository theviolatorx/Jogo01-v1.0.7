draw_self()
var _fontpadrao = draw_get_font()
var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)

draw_set_color(c_red)

draw_button(btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) , !mouse_check_button_pressed(mb_left))
if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
	if (mouse_check_button_released(mb_left) && !global.btn_press){
		global.btn_press = true
		room_goto(rm_inicio)
	}
}


draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_color(c_white)



draw_text(center_x,btn_y + (center_y / 2) + 155, "MENU")

draw_set_font(fnt_thaleahfat_large)

draw_set_color(c_black)
draw_text(center_x, 25, "TUTORIAL")

draw_set_color(c_white)
draw_text(center_x-2, 23, "TUTORIAL")

var _x = 10

draw_set_halign(fa_left)

draw_set_font(fnt_thaleahfat_media)


draw_set_color(c_black)
draw_text(_x, 80, "MOVIMENTACAO:")

draw_set_color(c_white)
draw_text(_x-2, 78, "MOVIMENTACAO:")

draw_set_font(fnt_thaleahfat_small)
var _texto = @"A: Move para a esquerda
D: Move para a Direita
W: Move para Cima
S: Move para Baixo
Barra de Espaco: Atira"

draw_set_color(c_black)
draw_text(_x, 110, _texto)
draw_set_color(c_white)
draw_text(_x-2, 108, _texto)


draw_set_font(fnt_thaleahfat_media)

draw_set_color(c_black)
draw_text(_x, 205, "POWER-UPS:")

draw_set_color(c_white)
draw_text(_x-2, 203, "POWER-UPS:")


var _y = 248
var _powerup = instance_create_depth(_x+10, _y, 100, obj_powerup1); // Tiro Duplo
_powerup.vspeed = 0;

var _vtam = _powerup.sprite_height
var _htam = _powerup.sprite_width
_powerup = instance_create_depth(_x+10, _y + (_vtam * 1), 100, obj_powerup2); // Tiro Triplo
_powerup.vspeed = 0;

_powerup = instance_create_depth(_x+10, _y + (_vtam * 2), 100, obj_powerup6); // Tiro Rápido
_powerup.vspeed = 0;

_powerup = instance_create_depth(_x+10, _y + (_vtam * 3), 100, obj_powerup3); // Escudo
_powerup.vspeed = 0;

_powerup = instance_create_depth(_x+10, _y + (_vtam * 4), 100, obj_powerup4); // Velocidade
_powerup.vspeed = 0;

_powerup = instance_create_depth(_x+10, _y + (_vtam * 5), 100, obj_powerup5); // Vida
_powerup.vspeed = 0;

draw_set_font(fnt_thaleahfat_small)
_texto = @"Tiro duplo

Tiro triplo

Tiro rapido

Escudo

Velocidade

Vida"
draw_set_color(c_black)
draw_text(_x+_htam, (_y - 8), "Tiro Duplo")
draw_set_color(c_white)
draw_text(_x-2+_htam, (_y - 10), "Tiro Duplo")

draw_set_color(c_black)
draw_text(_x+_htam, (_y - 8) + (_vtam * 1), "Tiro Triplo")
draw_set_color(c_white)
draw_text(_x-2+_htam, (_y - 10) + (_vtam * 1), "Tiro Triplo")

draw_set_color(c_black)
draw_text(_x+_htam, (_y - 8) + (_vtam * 2), "Tiro Rapido")
draw_set_color(c_white)
draw_text(_x-2+_htam, (_y - 10) + (_vtam * 2), "Tiro Rapido")

draw_set_color(c_black)
draw_text(_x+_htam, (_y - 8) + (_vtam * 3), "Escudo")
draw_set_color(c_white)
draw_text(_x-2+_htam, (_y - 10) + (_vtam * 3), "Escudo")

draw_set_color(c_black)
draw_text(_x+_htam, (_y - 8) + (_vtam * 4), "Velocidade")
draw_set_color(c_white)
draw_text(_x-2+_htam, (_y - 10) + (_vtam * 4), "Velocidade")

draw_set_color(c_black)
draw_text(_x+_htam, (_y - 8) + (_vtam * 5), "Vida")
draw_set_color(c_white)
draw_text(_x-2+_htam, (_y - 10) + (_vtam * 5), "Vida")


draw_set_font(_fontpadrao)
draw_set_halign(-1)
draw_set_color(c_white)

if (mouse_check_button_released(mb_left)){
	global.btn_press = false
}