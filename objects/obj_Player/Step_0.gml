/// This is Step
// You can write your code in this editor
dir_right = keyboard_check(vk_right);
dir_left = keyboard_check(vk_left);

h_mov = h_force*(dir_right-dir_left);

//side collision, x+force and place meeting

if(place_meeting(x+h_mov, y, obj_Solid)){
	while(!place_meeting(x,y,obj_Solid)){
		h_mov=1;
	}
}

//down collision y+force and place meeting

if(keyboard_check_pressed(ord("Z"))){
	v_mov = v_force;
	jumped=true;
	show_debug_message("z was pressed");
}

if(jumped=true){
	v_mov += g_force;
	show_debug_message(v_mov);
}

if(place_meeting(x,y,obj_Solid)){
	v_mov=0;
	jumped = false;
}

x += h_mov;
y += v_mov;