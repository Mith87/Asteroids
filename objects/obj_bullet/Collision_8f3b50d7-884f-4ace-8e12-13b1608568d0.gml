score += 10;

var snd = choose(snd_asteroid_1, snd_asteroid_2, snd_asteroid_3);
audio_play_sound(snd, 1, false);

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_ast_lg) {
		repeat(2) {
			var asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			asteroid.sprite_index = spr_ast_md;
		}
	} else if(sprite_index == spr_ast_md) {
		repeat(2) {
			var asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			asteroid.sprite_index = spr_ast_sm;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}