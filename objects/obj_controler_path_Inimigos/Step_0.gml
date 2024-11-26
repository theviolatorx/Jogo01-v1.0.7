if ( !modo_boss and (inimigos <= 0) and (inimigos_ativos <= 0) and (ondas <= ondas_modo_boss)) {
    alarm[0] = irandom_range(60 * 4, 60 * 6)
	inimigo_max = irandom_range(20, 40)
	inimigos = inimigo_max
	dist_inimigos = irandom_range(20, 30)
	while (caminho_selecionado == caminho_anterior) {
		caminho_selecionado = choose(pth_inimigo1, pth_inimigo2, pth_inimigo3, pth_inimigo4, pth_inimigo5)
	}
	caminho_anterior = caminho_selecionado
	
	while (inimigo_selecionado == inimigo_anterior) {
		inimigo_selecionado = choose(spr_inimigo0, spr_inimigo1, spr_inimigo2, spr_inimigo3, spr_inimigo4)
	}
	
	inimigo_anterior = inimigo_selecionado
	ondas++
	var _inimigo = string_digits(inimigo_selecionado)
	switch (_inimigo) {
	    case 13:
	        pontos_inimigo = 10
	        break;
		case 14:
	        pontos_inimigo = 14
	        break;
		case 15:
	        pontos_inimigo = 18
	        break;
		case 16:
	        pontos_inimigo = 22
	        break;
		case 17:
	        pontos_inimigo = 26
	        break;
	    default:
	        pontos_inimigo = 10
	        break;
	}
}
if (ondas > ondas_modo_boss) {
	randomize()
	ondas_modo_boss = irandom_range(6, 12)
	modo_boss = true
	alarm[0] = -1
	//show_debug_message("Modo Boss Ativado!")
}