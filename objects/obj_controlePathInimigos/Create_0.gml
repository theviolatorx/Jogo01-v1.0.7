randomize()
caminho_selecionado = choose(pth_inimigo1, pth_inimigo2, pth_inimigo3, pth_inimigo4, pth_inimigo5)
caminho_anterior = caminho_selecionado
inimigo_selecionado = choose(spr_inimigo0, spr_inimigo1, spr_inimigo2, spr_inimigo3, spr_inimigo4)
inimigo_anterior = inimigo_selecionado
alarm[0] = 30
dist_inimigos = 10
inimigo_max = irandom_range(20, 40)
//inimigo_max = 3
inimigos = inimigo_max
