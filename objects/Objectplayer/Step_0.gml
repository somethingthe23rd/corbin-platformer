/// @description Insert description here
// You can write your code in this editor

//if key is pressed then right = 1,  otherwise right = 0
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

xdirection = right -left;

xVector = xSpeed * xdirection;
yvector = yvector + grv;
 
x = x + xVector;

y = y + yvector;

//bounds
if (place_meeting(x + xVector,y,owall))
{
while (!place_meeting(x + xdirection , y , owall))
 {
 //move 1 pixel
 x = x + xdirection
 }
//x vector wont move 
xVector = 0;
}
x = x + xVector;

if place_meeting(x + xVector , y+sign(yvector), owall)

while (!place_meeting(x + xdirection , y , owall))
{
 y = y+sign(yvector)
 }