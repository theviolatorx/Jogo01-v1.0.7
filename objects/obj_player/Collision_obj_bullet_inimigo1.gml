/// @description Tiro do Inimigo
if (!campo_forca){
	global.nivel_vida -= global.dano_do_inimigo
	global.nivel_vida = clamp(global.nivel_vida, -1, 100)
	instance_destroy(other)
	
	if (global.nivel_vida <= 0){
		obj_BTN.image_xscale = 0
	}

}