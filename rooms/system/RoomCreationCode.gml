var planetarySystem = global.spaceMap[global.starId];
var planetCount = planetarySystem[? "planetCount"];
var planets = planetarySystem[? "planetList"];

for(var i = 0; i < planetCount; i++) {
	
	var p = planets[i];	
	var current = instance_create_layer(300 + 150 * i, 360, "Instances", o_planet);
	
	switch(p[? "type"]) {
		case "Ice":
			current.sprite_index = s_planet_ice;
			p[? "sprite"] = current.sprite_index;
			break;
		case "Iron":
			current.sprite_index = s_planet_iron;
			p[? "sprite"] = current.sprite_index;
			break;
		case "Lava":
			current.sprite_index = s_planet_lava;
			p[? "sprite"] = current.sprite_index;
			break;
		case "Silicate":
			current.sprite_index = s_planet_silicate;
			p[? "sprite"] = current.sprite_index;
			break;
		case "Ocean":
			current.sprite_index = s_planet_ocean;
			p[? "sprite"] = current.sprite_index;
			break;
		case "Desert":
			current.sprite_index = s_planet_desert;
			p[? "sprite"] = current.sprite_index;
			break;
		default:
			current.sprite_index = s_planet_silicate;
			p[? "sprite"] = current.sprite_index;
			break;
	}
	
	show_debug_message(p[? "mass"]);
	with(current) {		
		image_yscale = p[? "mass"] / 15; // scaling down due to large sprites
		image_xscale = image_yscale;
		image_angle = round(random_range(0, 360));
		name = p[? "name"];
		type = p[? "type"];
		mass = p[? "mass"];
		planetId = i;
	}	
}


