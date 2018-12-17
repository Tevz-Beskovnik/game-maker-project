scr_movement();
scr_idDetermener();
#region animation
switch(state)
{
	case "idle":
		switch(stateJ)
		{
			case "not jumping":
			sprite_index = ds_map_find_value(sprites, "idle");
			break;
			case "jumping":
			sprite_index = ds_map_find_value(sprites, "jump");
			break;
		}
	break;
	case "running":
		switch(stateJ)
		{
			case "not jumping":
			image_xscale = sign(hsp);
			sprite_index = ds_map_find_value(sprites, "run");
			break;
			case "jumping":
			image_xscale = sign(hsp);
			sprite_index = ds_map_find_value(sprites, "jump");
			break;
		}
	break;
}
#endregion
