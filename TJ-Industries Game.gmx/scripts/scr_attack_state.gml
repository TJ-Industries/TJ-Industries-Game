/// scr_attack_state
image_speed = .5;

switch (sprite_index) {
    case spr_player_down:
        break;
    
    case spr_player_up:
        sprite_index = spr_attack_up;
        break;
        
    case spr_player_left:
        sprite_index = spr_attack_left
        break;
    
    case spr_player_right:
        sprite_index = spr_attack_right
        break;
}

if (image_index >= 5 && attacked == false) {
    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
    
        // Hier moet attack down nog komen
    
        case spr_attack_up:
            xx = x;
            yy = y-10;
            break;
            
        case spr_attack_left:
            xx = x-10;
            yy = y+2;
            break;
        
        case spr_attack_right:
            xx = x+10;
            yy = y+2;
            break;
    }
  
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    attacked = true;
}
