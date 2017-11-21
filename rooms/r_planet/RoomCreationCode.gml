var planetarySystem = global.spaceMap[global.starId];
var planets = planetarySystem[? "planetList"];
var planet = planets[global.planetId];

show_debug_message(planetarySystem[? "name"]);
show_debug_message(planet[? "name"]);

with(o_planet_info) {
	name = planet[? "name"];
	type = planet[? "type"];
	mass = planet[? "mass"];
	s_name = planetarySystem[? "name"];
}

var s = global.ship[? "parts"];

var parts = ds_map_size(s);

for (var i = 0; i <parts; i++ ) {
  
}

var playerShip = instance_create_layer(300, 80, "Instances", o_ship);
var playerCargo = instance_create_layer(0, 0, "Instances", o_cargo);
var playerEngine = instance_create_layer(0, 0, "Instances", o_engine);

playerShip.sprite_index = s[? "ship"];

with (playerCargo) {
	
	sprite_index = s_cargo01;
	x = playerShip.x - sprite_width;
	y = playerShip.y;
}

with (playerEngine) {
	sprite_index = s_engine01;
	x = playerCargo.x - sprite_width;
	y = playerCargo.y;
}