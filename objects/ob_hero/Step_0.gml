/// @description Insert description here
// You can write your code in this editor
hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*2.5

if not place_free(x-5,y) and hspeed < 0{
	hspeed = 0
}
if not place_free(x-5,y) and hspeed > 0{
	hspeed = 0
}

if place_meeting(x,y+14,ob_solid){
	vspeed = 0
	gravity = 0
}
else{
	gravity = 1
}

if hspeed > 0{
	sprite_index = sp_hero_run_r
	rot = 1
}
else if hspeed < 0{
	sprite_index = sp_hero_run_l
	rot = 0
}
else{
	if rot = 1{
		sprite_index = sp_hero_idle_l
	}
	else{
		sprite_index = sp_hero_idle_r
	}
}