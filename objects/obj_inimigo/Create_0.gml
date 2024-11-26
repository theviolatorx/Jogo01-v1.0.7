caminho = obj_controler_path_Inimigos.caminho_selecionado
veloc_min = 2
veloc_max = 6
veloc = veloc_max
timer_tiro = 0
espera_tiro = 40
level_tiro = 1
path_start(caminho, veloc, path_action_stop, true)
fpsdown = 30
alarm[0] = fpsdown
inimigo_selecionado = string_digits(obj_controler_path_Inimigos.inimigo_selecionado)

/*
INFORMAÇÕES IMPORTANTES:

sprite 14: todos os tiros
sprite 17: tiro1
sprite 15: tiro1 ou tiro2
sprite 13: tiro2
sprite 16: tiro3


Para: obj_bullet_inimigo1
Usar:
_bullet.image_yscale = 0.3
_bullet.image_xscale = 0.7
_bullet.vspeed = 5

	
*/

atirar = function(){
	// criar tiros
	timer_tiro--
	timer_tiro = clamp(timer_tiro, 0, espera_tiro)
	
	var _tiro
	if (timer_tiro <= 0){
		switch (inimigo_selecionado) {
			case 13:
				tiro_2()
				break
		    case 14:
		        _tiro = choose(tiro_1, tiro_2, tiro_3)
				_tiro()
		        break
			case 15:
		        _tiro = choose(tiro_1, tiro_2)
				_tiro()
		        break
			case 16:
		        tiro_3()
		        break
			case 17:
		        tiro_1()
		        break;
				/*
		    default:
		        tiro_1()
				show_debug_message("Verifique obj_inimigo no tipo de tiro!")
		        break;
				*/
		}
			
		if (level_tiro == 1){
			tiro_1()
		} else if (level_tiro == 2){
			tiro_2()
		} else {
			tiro_3()
		}
		
		timer_tiro = espera_tiro
		
	}
}

conf_tiro = function(_objeto, _tiro){
	
	_objeto.image_yscale = 0.2
	_objeto.image_xscale = 0.6
	_objeto.image_angle = 180
	_objeto.vspeed = 5
		
	switch (_tiro) {
	    case 1:
		case 2:
			
	        break;
		case 3:
			_objeto.image_angle = 10
			_objeto.image_angle = -10
			_objeto.hspeed = -2
			_objeto.hspeed = +2
	
	        break;
	}
			

}

tiro_1 = function(){
	var _bullet = instance_create_layer(x,y + 5,"Bullet",obj_bullet_inimigo1)
	conf_tiro(_bullet, 1)
	
}

tiro_2 = function(){
	var _bullet1 = instance_create_layer(x-10,y,"Bullet",obj_bullet_inimigo1)
	var _bullet2 = instance_create_layer(x+10,y,"Bullet",obj_bullet_inimigo1)
	conf_tiro(_bullet1, 2)
	conf_tiro(_bullet2, 2)
	
}

tiro_3 = function(){
	var _bullet1 = instance_create_layer(x,y,"Bullet",obj_bullet_inimigo1)
	var _bullet2 = instance_create_layer(x,y,"Bullet",obj_bullet_inimigo1)
	var _bullet3 = instance_create_layer(x,y,"Bullet",obj_bullet_inimigo1)
	conf_tiro(_bullet1, 3)
	conf_tiro(_bullet2, 3)
	conf_tiro(_bullet3, 3)
	
	
	
}
