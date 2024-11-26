draw_self()
var _fontpadrao = draw_get_font()
var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)
var _x = 10



var _btn_start_texto
var _btn_start = instance_create_depth(center_x, 480, 100, obj_geral)
_btn_start.sprite_index = spr_rm_botao
_btn_start.image_xscale = .3
_btn_start.image_yscale = .3

if (room == rm_sobre_8){
	_btn_start_texto = "GOODBYE!"
} else {
	_btn_start_texto = "PRESS START"
}



draw_set_halign(fa_center)
draw_set_color(c_black)
draw_set_font(fnt_thaleahfat_small_media)
draw_text(center_x, 472, _btn_start_texto)


#region 1o. Menu - Tela Inicial

if (room == rm_sobre){
	
	var _nave = instance_create_depth(center_x, 150, 100, obj_geral)
	_nave.sprite_index = spr_rm_nave
	_nave.image_xscale = .5
	_nave.image_yscale = .5


	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_1)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 200, "PLAY FABRICA")

	draw_set_font(fnt_supermario_media)
	var _temp = "JOGO DA\n"
	_temp += "NAVE ESPACIAL"
	draw_set_color(c_yellow)
	draw_text(center_x, 230, _temp)
}

#endregion

#region 2o. Menu - História

if (room == rm_sobre_1){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_2)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "HISTORIA")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "Um grupo de estudantes do MIT\n"
	_temp += "(Instituto tecnologico de\n"
	_temp += "Massachsetts) desenvolveram,\n"
	_temp += "ao longo de 1961, um jogo\n"
	_temp += "de espaconaves para dois\n"
	_temp += "jogadores, em que cada um\n"
	_temp += "controlava uma nave e tinha\n"
	_temp += "a missao de destruir a do\n"
	_temp += "oponente.\n"
	draw_text(center_x, 150, _temp)
}


#endregion

#region 3o. Menu - História

if (room == rm_sobre_2){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_3)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "HISTORIA")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "Os primeiros jogos lancados\n"
	_temp += "no mundo marcaram a epoca e\n"
	_temp += "garantiram a consolidacao do\n"
	_temp += "mercado, alem da producao de\n"
	_temp += "classicos, como os titulos\n"
	_temp += "para Atari. Eh importante notar\n"
	_temp += "que sao consideradas as\n"
	_temp += "producoes que tiveram,\n"
	_temp += "lancamento comercial foram\n"
	_temp += "rodadas na tela e permitiram\n"
	_temp += "a interacao e diversao dos\n"
	_temp += "jogadores em todo o mundo."
	
	draw_text(center_x, 150, _temp)
}


#endregion

#region 4o. Menu - Objetivo

if (room == rm_sobre_3){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_4)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "OBJETIVO")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "O objetivo principal do jogo eh\n"
	_temp += "controlar uma nave espacial,\n"
	_temp += "atravessar diferentes cenarios\n"
	_temp += "galacticos e derrotar ondas de\n"
	_temp += "inimigos para alcancar a\n"
	_temp += "pontuacao mais alta. O jogador\n"
	_temp += "deve evitar obstaculos, coletar\n"
	_temp += "itens especiais e enfrentar\n"
	_temp += "chefes desafiadores para\n"
	_temp += "progredir no jogo.\n"
	
	draw_text(center_x, 150, _temp)
}


#endregion

#region 5o. Menu - Art Desing

if (room == rm_sobre_4){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_5)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "ART DESIGN")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "O estilo de arte que a gente\n"
	_temp += "utilizou para o nosso jogo foi\n"
	_temp += "o pixel art. Esse e um estilo de\n"
	_temp += "arte que se utiliza de quadrados\n"
	_temp += "pequenos para formar desenhos\n"
	_temp += "que, mesmo de longe quanto de\n"
	_temp += "bonito. Um exemplo disso e o\n"
	_temp += "Pac-Man. O design artistico do\n"
	_temp += "jogo segue o estilo pixel art\n"
	_temp += "retro, inspirado em classicos\n"
	_temp += "dos anos 80 e 90."
	
	draw_text(center_x, 150, _temp)
}


#endregion

#region 6o. Menu - Programação

if (room == rm_sobre_5){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_6)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "PROGRAMACAO")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "O jogo foi desenvolvido utilizando\n"
	_temp += "o GameMaker Studio, aproveitando\n"
	_temp += "sua linguagem baseada em GML\n"
	_temp += "(GameMaker Language).\n"
	_temp += "O GML eh responsavel por toda a\n"
	_temp += "dinamica, para gerar inimigos\n"
	_temp += "aleatoriamente na tela, contabilizar\n"
	_temp += "pontos, quais comandos apertar para\n"
	_temp += "controlar a nave."
	
	draw_text(center_x, 150, _temp)
}


#endregion

#region 7o. Menu - Turma de Games

if (room == rm_sobre_6){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_7)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "TURMA")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "CARLOS EDUARDO\n"
	_temp += "CLOVIS GARCIA\n"
	_temp += "GIOVANNI SANTINI\n"
	_temp += "JOAO VICTOR MATOS\n"
	_temp += "MARCELLO MORGERO\n"
	_temp += "MAYARA BUENO\n"
	_temp += "RAUL EDUARDO\n"
	_temp += "\n"
	_temp += "PROF. PRISCILA FARIAS"
	
	draw_text(center_x, 150, _temp)
}


#endregion

#region 8o. Menu - Agradecimentos

if (room == rm_sobre_7){
	
	var _pc = instance_create_depth(center_x, center_y, 99, obj_geral)
	_pc.sprite_index = spr_rm_computador
	_pc.image_xscale = .2
	_pc.image_yscale = .3
	
	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_sobre_8)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 80, "THANKS")

	draw_set_color(c_black)
	draw_set_font(fnt_thaleahfat_small_media)
	var _temp = "Nosso especial agradecimentos\n"
	_temp += "a Professora Priscila a qual\n"
	_temp += "nos apresentou a este mundo\n"
	_temp += "maravilhoso da criacao de\n"
	_temp += "Jogos no Game Maker.\n"
	_temp += "Agradecemos pela sua dedicacao\n"
	_temp += "e paciecia com cada um de nos.\n"
	_temp += "\n"
	_temp += "Nosso muito obrigado!\n"
	_temp += "\n"
	_temp += "- VOCE EH NOTA 1000 - "
	
	draw_text(center_x, 150, _temp)
}


#endregion

#region 9o. Menu - Fim


if (room == rm_sobre_8){
	
	var _nave = instance_create_depth(center_x, 150, 100, obj_geral)
	_nave.sprite_index = spr_rm_nave
	_nave.image_xscale = .5
	_nave.image_yscale = .5
	
	var _foto = instance_create_depth(center_x, 400, 100, obj_geral)
	_foto.sprite_index = spr_prof_priscila
	


	if (point_in_rectangle(_mx, _my, btn_x, btn_y + (center_y / 2) + 150, center_x + (32 * 6 / 2), btn_y + (center_y / 2) + (60 + 32 * 4) )) {
		if (mouse_check_button_released(mb_left) && !global.btn_press){
			global.btn_press = true
			room_goto(rm_inicio)
		}
	}

	//draw_set_color(c_red)

	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	

	draw_set_color(c_orange)
	draw_set_font(fnt_supermario_media_large)
	draw_text(center_x, 200, "THANK YOU")

}

#endregion







draw_set_font(_fontpadrao)
draw_set_halign(-1)
draw_set_color(c_white)

if (mouse_check_button_released(mb_left)){
	global.btn_press = false
}