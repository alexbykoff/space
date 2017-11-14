randomize(); // reset seed for an every game

global.spaceMap = [];

global.player = ds_map_create();

global.ship = ds_map_create();
global.ship[? "type"] = "default ship";
global.ship[? "capacity"] = 5;
global.ship[? "slots"] = 2;
global.ship[? "price"] = 5200;
global.ship[? "condition"] = 100;

global.player[? "level"] = 1;
global.player[? "xp"] = 1;
global.player[? "credits"] = 1000;
global.player[? "ship"] = global.ship;


for(i = 0; i < round(random_range(20, 40)); i++) {  // number of stars
	
	var name = totro(3, 5, 1);  // using random names library
	var star = ds_map_create();  // data structure map is object alike
	var planets = [];
	
	for (k = 0; k < round(random_range(0, 8)); k++) {
		var p = ds_map_create();
		var planetName = totro(2, 5, 1);
		planetName = planetName[0];
		p[? "name"] = planetName;
		p[? "type"] = choose("Ice", "Ocean", "Desert", "Lava", "Iron", "Silicate");
		p[? "mass"] = (round(random_range(25, 200))) / 100;
		planets[k] = p;
	}
	
	star[? "name"] = name[0];  // same as ds_map_add(global.spaceMap, "name", name[0])
	star[? "planetCount"] = array_length_1d(planets);  // random_range returns Real number, so round
	star[? "planetList"] = planets;
	
	global.spaceMap[i] = star;
}

{
	var data = global.spaceMap[0];
	var star = data[? "name"];
	var planetCount = data[? "planetCount"];
	show_debug_message("Star: " + star);
	show_debug_message("Planet Count: " + string(planetCount)); // always 'stringify' other types before consoling
}