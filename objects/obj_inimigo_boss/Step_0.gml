


if (move_iniciar){
	vspeed = veldescida
	if (y >= ((room_height / 2) - 111) ){
		move_iniciar = false
		vspeed = 0
		path_start(caminho, veloc, path_action_continue, true)
	}
}

if (nivel_forca < (nivel_forca_max * .1) ){
	angulo_tiro = 7
	timer_tiro = 30
	global.dano_do_boss = 9

} else if (nivel_forca < (nivel_forca_max * .2) ){
	angulo_tiro = 10
	timer_tiro = 35
	global.dano_do_boss = 7
	
} else if (nivel_forca < (nivel_forca_max * .3) ){
	angulo_tiro = 13
	timer_tiro = 40
	global.dano_do_boss = 5
	
} else if (nivel_forca < (nivel_forca_max * .4) ){
	angulo_tiro = 16
	timer_tiro = 45
	global.dano_do_boss = 3
	
} else {
	angulo_tiro = 20
	timer_tiro = 50
	global.dano_do_boss= 1
}

