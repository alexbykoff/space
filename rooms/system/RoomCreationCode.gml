for(i = 0; i < random_range(2,5); i += 1) {
	instance_create_layer(300+150*i, 360, "Instances", o_planet_1);

	with(o_planet_1) {
	image_yscale = random_range(0.5, 1.5);
	}

	with(o_planet_1) {
	image_xscale = image_yscale;
	}
}