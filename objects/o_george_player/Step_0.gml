/// @description Insert description here
// You can write your code in this editor

//if key is pressed then right = 1,  otherwise right = 0
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check(vk_up);
xdirection = right -left;

xVector = xSpeed * xdirection;
yvector = yvector + grv;
 



//bounds
if (place_meeting(x+xVector, y,owall  ))
{
while (!place_meeting(x + xdirection , y ,owall ))
 {
 //move 1 pixel
 x = x + xdirection
 }
//x vector wont move 
xVector = 0;
}

if (place_meeting(x+xVector, y,o_wall_invis  ))
{
while (!place_meeting(x + xdirection , y ,o_wall_invis ))
 {
 //move 1 pixel
 x = x + xdirection
 }
//x vector wont move 
xVector = 0;
}
x = x + xVector;

if place_meeting(x , y+yvector, owall)
{
while (!place_meeting(x, y+sign(yvector) , owall))
{
 y = y+sign(yvector)
 }
 yvector=0
}

if place_meeting(x , y+yvector, o_wall_invis)
{
while (!place_meeting(x, y+sign(yvector) , o_wall_invis))
{
 y = y+sign(yvector)
 }
 yvector=0
}
y=y+yvector

if (place_meeting(x,y+1, owall) and (jump) )
{
yvector = jumpforce
}
if (place_meeting(x,y+1, o_wall_invis) and (jump) )
{
yvector = jumpforce
}


if (y >= room_height)
{
room_restart()
}























