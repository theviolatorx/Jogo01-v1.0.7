if ( (inimigos <= 0)) {
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
	
}