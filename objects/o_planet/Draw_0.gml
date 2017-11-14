draw_set_halign(fa_left);
draw_set_font(f_title14)
draw_text(self.x, self.y + 80, self.name);
draw_set_font(f_normal10);
draw_text_color(self.x, self.y + 110, "Type: " + type, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(self.x, self.y + 130, "Mass: " + string(mass) + "Em", c_lime, c_lime, c_lime, c_lime, 1);
draw_self();