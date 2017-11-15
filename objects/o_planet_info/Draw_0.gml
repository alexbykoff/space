/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 011B5EFC
/// @DnDArgument : "code" "draw_set_font(f_normal10);$(13_10)draw_set_colour(c_lime);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)draw_text(x, y + 10, "Planet " + string(name) + " of " + string(s_name) + " system");$(13_10)draw_text(x, y + 30, "Type: " + string(type));$(13_10)draw_text(x, y + 50, "Mass: " + string(mass));$(13_10)$(13_10)draw_self();"
draw_set_font(f_normal10);
draw_set_colour(c_lime);
draw_set_halign(fa_left);

draw_text(x, y + 10, "Planet " + string(name) + " of " + string(s_name) + " system");
draw_text(x, y + 30, "Type: " + string(type));
draw_text(x, y + 50, "Mass: " + string(mass));

draw_self();