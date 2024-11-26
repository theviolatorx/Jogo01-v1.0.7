/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _x = x
var _y = y
with (other) {
    var _particulas = instance_create_layer(_x, _y, "Particulas", obj_particulas)
	_particulas.sprite_index = spr_bullet_particulas1
	_particulas.image_xscale = 4
	_particulas.image_yscale = 4
}

var _pontos_boss = obj_controler_boss.pontos_boss
obj_controler_pontuacao.pontos += _pontos_boss