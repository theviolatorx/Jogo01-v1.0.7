if (obj_controler_path_Inimigos.modo_boss and !boss_criado){
	// obj_controlePathInimigos.modo_boss = false
	//obj_controlePathInimigos.alarm[0] = 30
	var _x = room_width / 2
	var _y = -room_height - 111/2
	instance_create_layer(_x, _y, "Player", obj_inimigo_boss)
	boss_criado = true
	pontos_boss = 100
}