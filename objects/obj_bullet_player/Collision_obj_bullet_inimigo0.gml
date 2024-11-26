/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _x = x
var _y = y
with (other) {
    var _particulas = instance_create_layer(_x, _y, "Particulas", obj_particulas)
	_particulas.sprite_index = spr_bullet_particulas0
	_particulas.image_xscale = 2
	_particulas.image_yscale = 2
}
instance_destroy(other)
instance_destroy()