/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5794933D
/// @DnDArgument : "code" "var planetarySystem = global.spaceMap[global.starId];$(13_10)var planets = planetarySystem[? "planetList"];$(13_10)var planet = planets[global.planetId];$(13_10)$(13_10)show_debug_message(planetarySystem[? "name"]);$(13_10)show_debug_message(planet[? "name"]);$(13_10)$(13_10)var planet_info_text = instance_create_layer(70, 600, "Instances", o_planet_info);$(13_10)$(13_10)with(planet_info_text) {$(13_10)	name = planet[? "name"];$(13_10)	type = planet[? "type"];$(13_10)	mass = planet[? "mass"];$(13_10)	s_name = planetarySystem[? "name"];$(13_10)}"
var planetarySystem = global.spaceMap[global.starId];
var planets = planetarySystem[? "planetList"];
var planet = planets[global.planetId];

show_debug_message(planetarySystem[? "name"]);
show_debug_message(planet[? "name"]);

var planet_info_text = instance_create_layer(70, 600, "Instances", o_planet_info);

with(planet_info_text) {
	name = planet[? "name"];
	type = planet[? "type"];
	mass = planet[? "mass"];
	s_name = planetarySystem[? "name"];
}