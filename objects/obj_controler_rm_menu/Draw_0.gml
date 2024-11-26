draw_self()
var _fontpadrao = draw_get_font()
var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)

draw_set_color(c_red)

draw_button(btn_x, 201, center_x + (32 * 6 / 2), 251, !mouse_check_button_pressed(mb_left))
if (point_in_rectangle(_mx, _my,btn_x, 201, center_x + (32 * 6 / 2), 251)) {
	if (mouse_check_button_pressed(mb_left) && !global.btn_press){
		global.btn_press = true
		room_goto(rm_jogo)
	}
} 

draw_button(btn_x, 284 , center_x + (32 * 6 / 2), 334, !mouse_check_button_pressed(mb_left))
if (point_in_rectangle(_mx, _my, btn_x, 284 , center_x + (32 * 6 / 2), 334)) {
	if (mouse_check_button_pressed(mb_left) && !global.btn_press){
		global.btn_press = true
		room_goto(rm_tutorial)
	}
} 


draw_button(btn_x, 367, center_x + (32 * 6 / 2), 417, !mouse_check_button_pressed(mb_left))
if (point_in_rectangle(_mx, _my,btn_x, 367, center_x + (32 * 6 / 2), 417)) {
	if (mouse_check_button_pressed(mb_left) && !global.btn_press) {
		global.btn_press = true
		room_goto(rm_sobre)
	}
}


//draw_button(btn_x, btn_y + (center_y / 2) + (48 * 3), center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (32 * 6) , !mouse_check_button_pressed(mb_left))
draw_button(btn_x, 450, center_x + (32 * 6 / 2), 500, !mouse_check_button_pressed(mb_left))
if (point_in_rectangle(_mx, _my, btn_x, 450, center_x + (32 * 6 / 2), 500 )) {
	if (mouse_check_button_pressed(mb_left)  && !global.btn_press){
		game_end()
	}
}

draw_set_font(fnt_thaleahfat_large)
draw_set_halign(fa_center)
draw_set_color(c_black)
var _texto = "TIRO\n"
_texto += "ESPACIAL"
draw_text(center_x, 25, _texto)

draw_set_color(c_white)
draw_text(center_x-2, 23, _texto)

draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(center_x, 211, "JOGAR")

draw_text(center_x, 294, "INSTRUCOES")

draw_text(center_x, 377, "SOBRE")

draw_text(center_x, 460, "SAIR")

draw_set_font(_fontpadrao)
draw_set_halign(-1)
draw_set_color(c_white)

if (mouse_check_button_released(mb_left)){
	global.btn_press = false
}