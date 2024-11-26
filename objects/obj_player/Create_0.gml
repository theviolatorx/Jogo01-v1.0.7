/// @description Insert description here
// You can write your code in this editor
vsh = 4
vsv = 4

espera_tiro = 8 * 2
timer_tiro = 0

level_tiro = 1
campo_forca = 0
lives = 3
nivel_vida = global.nivel_vida
//dano_do_inimigo = global.dano_do_inimigo 
//dano_do_boss =  global.dano_do_boss 

game_over = false
dar_vida = false


controla_player = function(){
	
	
	
	movimentacao();


	//show_debug_message("X: "+ string(_x)+" / Y: "+string(_y))
	//show_debug_message("Tiro: " + string(_shoot))

	timer_tiro--
	timer_tiro = clamp(timer_tiro, 0, espera_tiro)
	
	var _shoot = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	if (_shoot && timer_tiro <= 0){
			
		if (level_tiro == 1){
			tiro_1()
		} else if (level_tiro == 2){
			tiro_2()
		} else {
			tiro_3()
		}
		
		timer_tiro = espera_tiro
		
	}
} // Fim função controla player

movimentacao = function(){
	var _playerw = obj_player.sprite_width
	var _playerh = obj_player.sprite_height
	
	
	var _x = (keyboard_check(ord("D")) || keyboard_check(vk_right) || keyboard_check(vk_numpad6)) - 
			(keyboard_check(ord("A")) || keyboard_check(vk_left) || keyboard_check(vk_numpad4))
	var _y = (keyboard_check(ord("S")) || keyboard_check(vk_down) || keyboard_check(vk_numpad2)) - 
			(keyboard_check(ord("W")) || keyboard_check(vk_up) || keyboard_check(vk_numpad8))

	if (keyboard_check_pressed(vk_enter)){
		level_tiro++
		if (level_tiro > 3) level_tiro = 1
	}
		
	x += (_x * vsh)
	y += (_y * vsv)
	x = clamp(x, _playerw/2, room_width - (_playerw/2))
	y = clamp(y, _playerh/2, 457 ) //room_height - (_playerh/2))
}

tiro_1 = function(){
	var _bullet = instance_create_layer(x,y,"Bullet",obj_bullet_player)
		
	_bullet.vspeed = -10
}

tiro_2 = function(){
	var _bullet1 = instance_create_layer(x-10,y,"Bullet",obj_bullet_player)
	var _bullet2 = instance_create_layer(x+10,y,"Bullet",obj_bullet_player)
	
	_bullet1.vspeed = -10
	_bullet2.vspeed = -10
}

tiro_3 = function(){
	var _bullet1 = instance_create_layer(x,y,"Bullet",obj_bullet_player)
	var _bullet2 = instance_create_layer(x,y,"Bullet",obj_bullet_player)
	var _bullet3 = instance_create_layer(x,y,"Bullet",obj_bullet_player)
	
	_bullet1.vspeed = -10
	_bullet2.vspeed = -10
	_bullet3.vspeed = -10
	
	_bullet1.image_angle = 10
	_bullet3.image_angle = -10
	_bullet1.hspeed = -2
	_bullet3.hspeed = +2
}



controla_tiro = function(_player){
	var _x = _player.x
	var _y = _player.y
}