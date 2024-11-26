draw_self()
//draw_text(20,20,"Level Shoot: " + string(level_tiro))
//draw_text(20,20,"Vidas: " + string(lives))
//draw_text(20,35,"Nivel Vidas: " + string(nivel_vida))


if (campo_forca){
	if (instance_exists(obj_bullet_inimigo1)){
		var _dist = point_distance(x, y, obj_bullet_inimigo1.x,obj_bullet_inimigo1.y)
		// destruir tiros proximos ao campo de força
		
	}
	if (instance_exists(obj_bullet_inimigo0)){
		var _dist = point_distance(x, y, obj_bullet_inimigo0.x,obj_bullet_inimigo0.y)
		// destruir tiros proximos ao campo de força
		
	}
	draw_sprite(spr_campo_forca,-1,x,y)
}