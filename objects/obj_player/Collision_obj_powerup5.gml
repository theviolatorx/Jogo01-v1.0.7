/// @description Vida
audio_play_sound(snd_powerup_pego, 0, false)
// lives += 1
randomize()
global.nivel_vida += 15 * random_range(1, 1.5)
global.nivel_vida = clamp(global.nivel_vida, 0, 100)
if ((lives < 3) and (global.nivel_vida == 100) and dar_vida){
		lives++
		dar_vida = false
}
with(other){
	instance_destroy()
}
