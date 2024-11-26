// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
global.pontuacao_final = 0
global.btn_press = false
global.dano_do_boss = 1 // 1  // Dano que o player recebe do boss
global.dano_do_inimigo = .3 // .3 // Dano que o plauer recebe dos inimigos
global.nivel_vida = 100

function scr_showPowerups(){
	y += vspeed
	alpha += 0.009
	if (alpha <=1) {
		image_alpha = alpha
	}
}