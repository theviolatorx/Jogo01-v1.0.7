

if (nivel_forca <= 0){
	obj_controler_path_Inimigos.modo_boss = false
	obj_controler_path_Inimigos.ondas = 0
	obj_controler_path_Inimigos.inimigos = 0
	obj_controler_boss.boss_criado = false
	
	instance_destroy()

	var _explosao = instance_create_layer(x, y, "Particulas", obj_explosao)
	_explosao.sprite_index = spr_explosao1
	
}