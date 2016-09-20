scr_variables();

spd = 2;

if (keyboard_check(vk_shift)){ 
spd = 3;
}

if (attack) {
    image_index = 0;
    state = scr_attack_state
}

if (attack) {
    image_index = 0
    state = scr_attack_state;
}

//get direction
dir = point_direction(0,0,xaxis,yaxis);

//get length
if (xaxis == 0 and yaxis == 0) {
len = 0;
}  else {    
    len = spd;
}

//Speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//control the sprite
image_speed = sign(len)*.2;
if (len == 0) image_index = 0;
// Up Down
if (vspd > 0){
    sprite_index = spr_player_down;
    } else if (vspd < 0) {
    sprite_index = spr_player_up;
    }
// Left Right
if (hspd > 0){
    sprite_index = spr_player_right;
    } else if (hspd < 0){
    sprite_index = spr_player_left;
    }    
// Right+Down
if (hspd > 0 && vspd > 0) {
    sprite_index = spr_player_right_down 
    }
    
// Left+Up
if (hspd < 0 && vspd < 0) {
    sprite_index = spr_player_left_up
    }
    
// Left+Down
if (hspd < 0 && vspd > 0) {
    sprite_index = spr_player_left_down 
    }
    
// Right+Up
if (hspd > 0 && vspd < 0) {
    sprite_index = spr_player_right_up
    }
