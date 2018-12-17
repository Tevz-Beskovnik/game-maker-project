left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
var move = right - left;
hsp = move * spd;
vsp += grv;
if(place_meeting(x + hsp, y, obj_colision))
{
	while(!place_meeting(x + sign(hsp), y, obj_colision))
	{
		x += sign(hsp); 
	}
	hsp = 0;
}
x += hsp;
if(keyboard_check(ord("W"))) && (place_meeting(x, y + 1, obj_colision))
{
	vsp = -4;
	stateJ = "jumping";
}
if(place_meeting(x, y + vsp, obj_colision))
{
	while(!place_meeting(x, y + sign(vsp), obj_colision))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;
if(hsp != 0)
{
	state = "running";
}
else
{
	state = "idle";
}
if(vsp == 0)
{
	stateJ = "not jumping";
}