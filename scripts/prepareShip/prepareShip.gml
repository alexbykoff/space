
global.ship = ds_map_create();
global.ship[? "type"] = "default ship";
global.ship[? "capacity"] = 5;
global.ship[? "slots"] = 2;
global.ship[? "price"] = 5200;
global.ship[? "condition"] = 100;

var shipParts = ds_map_create();

shipParts[? "ship"] = s_ship01;
shipParts[? "cargo"] = s_cargo01;
shipParts[? "engine"] = s_engine01;

global.ship[? "parts"] = shipParts;