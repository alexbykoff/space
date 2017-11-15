draw_set_font(f_normal10);
draw_set_colour(c_lime);
draw_set_halign(fa_left);

draw_text(x, y + 10, "Planet " + string(name) + " of " + string(s_name) + " system");
draw_text(x, y + 30, "Type: " + string(type));
draw_text(x, y + 50, "Mass: " + string(mass));