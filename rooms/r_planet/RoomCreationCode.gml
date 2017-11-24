var planetarySystem = global.spaceMap[global.starId];
var planets = planetarySystem[? "planetList"];
var planet = planets[global.planetId];

with(o_planet_info) {
	name = planet[? "name"];
	type = planet[? "type"];
	mass = planet[? "mass"];
	s_name = planetarySystem[? "name"];
}

var planetSprite = instance_create_layer(room_width, room_height / 3, "Instances", o_planet_large);
show_debug_message(planet[? "sprite"])
planetSprite.sprite_index = planet[? "sprite"];

var playerEngine = instance_create_layer(128, 128, "Instances", o_engine);
playerEngine.sprite_index = s_engine01;

var modules = global.ship[? "modules"];
for (var i = 0; i <array_length_1d(modules); i++ ) {
	var module = modules[i];
	var m = instance_create_layer(256 + 128 * i, 128, "Instances", module[? "object"]);
	m.sprite_index = module[? "sprite"];  
}

var playerShip = instance_create_layer(256 + 128 * array_length_1d(modules) ,128, "Instances", o_ship);
playerShip.sprite_index = s_ship01;
