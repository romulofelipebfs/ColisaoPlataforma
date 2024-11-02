/// @description Insert description here
// You can write your code in this editor


var _chao = place_meeting(x, y + 1, obj_chao);

//Movimento
var _left = keyboard_check(ord("A"))
var _right = keyboard_check(ord("D"))
var _jump = keyboard_check_pressed(vk_space);

velx = (_right - _left) * max_velx;



vely = clamp(vely, -max_vely, max_vely * 2);

if(_chao){
	qtd_pulos = 2;
}else{
	vely += grav;
}

if(_jump && qtd_pulos > 0){
	vely = -max_vely;
	qtd_pulos--;
}