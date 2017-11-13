randomize();

global.spaceMap = ds_map_create();

for(i = 0; i < round(random_range(20, 40)); i++) {
	global.spaceMap[? i] = round(random_range(0, 7));	
}

show_message(global.spaceMap[? 1]);