/// @description Tiro 2
audio_play_sound(snd_powerup_pego, 0, false)
level_tiro = 2
alarm[0] = 300
with(other){
	instance_destroy()
}