/// @description Campo de Força
audio_play_sound(snd_powerup_pego, 0, false)
campo_forca = 1
alarm[1] = 450
with(other){
	instance_destroy()
}