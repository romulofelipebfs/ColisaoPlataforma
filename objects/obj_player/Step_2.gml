/// @description Insert description here
// You can write your code in this editor


// Colisão Horizontal
repeat(abs(velx)){
	var _velx = sign(velx)
	
	//Verificando a rampa
	if(place_meeting(x + _velx, y, obj_chao) &&
		!place_meeting(x + _velx, y - 1, obj_chao)){
			y--;
	}
	if(!place_meeting(x + _velx, y, obj_chao) &&
		!place_meeting(x + _velx, y + 1, obj_chao)&&
		place_meeting(x + _velx, y + 2, obj_chao)){
			y++;
		}
	
	//Verificando o chão
	if(place_meeting(x + _velx, y, obj_chao)){
		
		velx = 0;
		break;
		
	}else{
		
		x += _velx;
		
	}
}


repeat(abs(vely)){
	var _vely = sign(vely);
	if(place_meeting(x, y + _vely, obj_chao)){
		vely = 0;
		break;

	}else{
		y += _vely;
	}
}


