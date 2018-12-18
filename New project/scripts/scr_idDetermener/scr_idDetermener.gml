var cam;
var ins;
cam = view_camera[0]
ins = instance_place(x, y, obj_room);
if(ins != noone)
{
	camera_set_view_target(cam, ins);
}
else
{
	camera_set_view_target(cam, obj_player);
}