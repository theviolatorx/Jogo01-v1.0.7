/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _x = x
var _y = y
with (other) {
    var _explosao = instance_create_layer(x, y, "Particulas", obj_explosao)
	_explosao.sprite_index = spr_explosao0
	_explosao.image_xscale = 0.05
	_explosao.image_yscale = 0.05
}

instance_destroy(other)
instance_destroy()

obj_controler_path_Inimigos.inimigos_ativos--
var _pontos_inimigos = obj_controler_path_Inimigos.pontos_inimigo
obj_controler_pontuacao.pontos += _pontos_inimigos