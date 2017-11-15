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