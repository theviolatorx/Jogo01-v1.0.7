draw_self()
var _fontpadrao = draw_get_font()
var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)

draw_set_color(c_red)

draw_button(btn_x, btn_y + (center_y / 2) + 48, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (32 * 4) , !mouse_check_button_pressed(mb_left))
if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 48, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (32 * 4) )) {
	if (mouse_check_button_pressed(mb_left) && !global.btn_press){
		global.btn_press = true
		room_goto(rm_inicio)
	}
}


draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_color(c_white)


draw_text(center_x,btn_y + (center_y / 2) + 64, "MENU")

draw_set_font(fnt_gameover)
draw_text(center_x, (center_y / 2) - 100, "GAME\nOVER")

draw_set_font(fnt_thaleahfat_large)
draw_set_halign(fa_center)
draw_set_color(c_white)

draw_text(center_x, center_y, global.pontuacao_final)

draw_set_font(_fontpadrao)
draw_set_halign(-1)
draw_set_color(c_white)

if (mouse_check_button_released(mb_left)){
	global.btn_press = false
}