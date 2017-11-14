var planetarySystem = global.spaceMap[0];
var planetCount = planetarySystem[? "planetCount"];
var planets = planetarySystem[? "planetList"];

for(i = 0; i < planetCount; i++) {
	
	var p = planets[i];	
	var current = instance_create_layer(300 + 150 * i, 360, "Instances", o_planet_1);
	show_debug_message(p[? "mass"]);
	with(current) {		
		image_yscale = p[? "mass"];
		image_xscale = image_yscale;
	}	
}

