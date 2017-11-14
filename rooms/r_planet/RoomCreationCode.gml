/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5794933D
/// @DnDArgument : "code" "var planetarySystem = global.spaceMap[global.starId];$(13_10)var planets = planetarySystem[? "planetList"];$(13_10)var planet = planets[global.planetId];$(13_10)$(13_10)show_debug_message(planetarySystem[? "name"]);$(13_10)show_debug_message(planet[? "name"]);$(13_10)"
var planetarySystem = global.spaceMap[global.starId];
var planets = planetarySystem[? "planetList"];
var planet = planets[global.planetId];

show_debug_message(planetarySystem[? "name"]);
show_debug_message(planet[? "name"]);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 29ABFFB6
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "planet[? "name"]"
draw_text(200, 300,  + string(planet[? "name"]));