
global.ship = ds_map_create();
global.ship[? "type"] = "default ship";
global.ship[? "slots"] = 2;
global.ship[? "price"] = 5200;
global.ship[? "condition"] = 100;


var shipModules = [];

var cargo = ds_map_create();
cargo[? "type"] = "cargo module";
cargo[? "object"] = o_cargo;
cargo[? "model"] = "Chimbalimba OY Hauler"
cargo[? "capacity"] = 120;
cargo[? "sprite"] = s_cargo01;

shipModules[0] = cargo;

global.ship[? "modules"] = shipModules;