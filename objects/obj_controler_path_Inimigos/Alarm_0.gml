/// @description Criação de Ondas
if (inimigos > 0 ){
	
	while (inimigo_selecionado != inimigo_anterior) {
		inimigo_selecionado = choose(spr_inimigo0, spr_inimigo1, spr_inimigo2, spr_inimigo3, spr_inimigo4)
	}
	instance_create_layer(-100, -100, "Player", obj_inimigo)
	obj_inimigo.sprite_index = inimigo_selecionado
	alarm[0] = dist_inimigos
	inimigos--
	inimigos_ativos++
}
