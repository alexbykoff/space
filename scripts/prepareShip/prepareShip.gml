
global.ship = ds_map_create();
global.ship[? "type"] = "default ship";
global.ship[? "slots"] = 2;
global.ship[? "price"] = 5200;
global.ship[? "condition"] = 100;

var cargos = readFile("\\modules\\cargo.json");

var moduleId = 1;
/*
for (var i = 0; i <ds_list_size(cargos); i ++) {
	show_debug_message("into loop")	
	var el = cargos[| i];
	show_debug_message(el)
	if (el[? "id"] == moduleId) {
		show_debug_message("found element")
	}
}
*/
var shipModules = [];

var c = cargos[| 0];
var cargo = ds_map_create();
cargo[? "name"] = c[? "name"];
cargo[? "object"] = o_cargo;
cargo[? "capacity"] = c[? "capacity"];
cargo[? "sprite"] = asset_get_index(c[? "sprite"]);

shipModules[0] = cargo;

global.ship[? "modules"] = shipModules;