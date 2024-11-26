/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if ((global.nivel_vida <= 0) and (!game_over)){
	var _explosao = instance_create_layer(x, y, "Particulas", obj_explosao)
	_explosao.sprite_index = spr_explosao1
	_explosao.player_morreu = true
	game_over = true
	global.pontuacao_final = obj_controler_pontuacao.pontos
}