if ((path_index == pth_inimigo1) or (path_index == pth_inimigo3)) {
	veloc = 3
}
path_speed = veloc

if (path_index == -1) {
    instance_destroy()
	obj_controler_path_Inimigos.inimigos_ativos--
}

atirar()
