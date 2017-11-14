show_debug_message("Star id is " + string(global.starId));
show_debug_message("Planet id is " + string(global.planetId));

var star = global.spaceMap[global.starId];
var planets = star[? "planetList"];
var p = planets[global.planetId];

show_debug_message("I am planet " + p[? "name"]);
