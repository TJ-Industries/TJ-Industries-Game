///This is a script for some variables

//Movement
right = (keyboard_check(ord('D')));
left = (keyboard_check(ord('A')));
down = (keyboard_check(ord('S')));
up = (keyboard_check(ord('W')));
attack = (keyboard_check(ord('J')));

xaxis = (right - left);
yaxis = (down - up);

if (!up and !down and !left and !right){
    image_index = 0
}

