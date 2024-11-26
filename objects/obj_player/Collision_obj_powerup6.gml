/// @description Tempo Tiro
audio_play_sound(snd_powerup_pego, 0, false)
espera_tiro = 4
timer_tiro = espera_tiro
alarm[3] = 1200
with(other){
	instance_destroy()
}
