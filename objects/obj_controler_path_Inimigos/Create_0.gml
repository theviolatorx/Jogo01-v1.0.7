randomize()
caminho_selecionado = choose(pth_inimigo1, pth_inimigo2, pth_inimigo3, pth_inimigo4, pth_inimigo5)
caminho_anterior = caminho_selecionado
inimigo_selecionado = choose(spr_inimigo0, spr_inimigo1, spr_inimigo2, spr_inimigo3, spr_inimigo4)
inimigo_anterior = inimigo_selecionado
pontos_inimigo = 10
alarm[0] = 30
dist_inimigos = 15
inimigo_max = irandom_range(20, 40)
inimigos = inimigo_max
inimigos_ativos = 0
ondas = 0
ondas_modo_boss = 6 // Quantidade de ondas para ativar o modo boss
modo_boss = false
