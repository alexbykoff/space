draw_set_halign(fa_center);
draw_set_font(f_title14)
draw_text(self.x, self.y + 80, self.name);
draw_set_font(f_normal10);
draw_text_color(self.x, self.y + 110, "Type: " + type, c_red, c_red, c_red, c_red, 1);
draw_text_color(self.x, self.y + 130, "Mass: " + mass + "Em", c_red, c_red, c_red, c_red, 1);
draw_self();