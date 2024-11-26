// Fazer os tiros

if (!move_iniciar){
	var _n_projeteis = 360 / angulo_tiro;  // Quantidade de projéteis (360° dividido por 30°)
	var _angulo_inicial = 0;  // A direção inicial (pode ser qualquer valor, como 0 ou 90)

	for (var _i = 0; _i < _n_projeteis; _i++) {
		var _angulo = _angulo_inicial + (_i * angulo_tiro);  // Aumenta 30° para cada projétil
		var _proj = instance_create_layer(x, y, "Bullet", obj_bullet_inimigo0);  // Cria o projétil
		_proj.direction = _angulo;  // Define a direção do projétil
		_proj.speed = 3
	}
}

alarm[0] = timer_tiro