vsp = 0;
hsp = 0;
spd = 2;
grv = 0.3;
state = "idle";
stateJ = "not jumping";
#region sprites
sprites = ds_map_create();
ds_map_add(sprites, "idle", spr_playerI);
ds_map_add(sprites, "jump", spr_playerJ);
ds_map_add(sprites, "run", spr_playerR);
#endregion
window_set_fullscreen(true);