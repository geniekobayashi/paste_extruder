//
// PFCL25 motor extruder upper cover
// Oct.4 2013, 4th drawing by GHK
//

module outer_part()
	difference() {
 		union(){
			translate([0, 0, 6])
				cylinder(h = 3.5, r = 25, $fn=96);
			translate([0, 0, 9.5])
				cylinder(h = 1.5, r1 = 25,r2 = 23.5, $fn=96);
			translate([0, 0, 11])
				cylinder(h = 3.5, r1 = 22.5, r2 = 18);
			translate([0, 0, 11])
				cylinder(h = 11.5, r = 18);
			translate([0, 0, 22.5])
				cylinder(h = 4, r1 = 18, r2 = 14);
			translate([0, 0, 26.5])
				cylinder(h = 4.5, r1 = 9, r2 = 6, $fn=48);
			translate([0, 0, 26.5])
				cylinder(h = 64, r = 6);
	// top cap
	//			translate([0, 0, 90.5])
	//				cylinder(h = 2, r1 = 4, r2 = 3);

	//3 ribs

	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +90, [0, 0, 1])
			translate([0, -2, 6])
				cube([20.5, 4, 23]);

			rotate( i * 360 / 3 +90, [0, 0, 1])
			translate([14, -2, 30])
				rotate( 45, [0, 1, 0])
				cube([15, 4, 15]);
	}
  }
}

	//3 holes for platform

	for ( i = [0 : 2] ) {
		rotate( i * 360 / 3 , [0, 0, 1])
		translate([0, 17.5, 0])
			cylinder(h = 15, r = 1.35, $fn=12);
	}

	//2 holes for motor mount

	for ( i = [0 : 1] ) {
		rotate( i * 360 / 2 +30, [0, 0, 1])
		translate([0, 17.75, 0])
			cylinder(h = 15, r = 1.5, $fn=12);

      // M3 nut holder
		rotate( i * 360 / 2 +30, [0, 0, 1])
      translate([0, 17.75, 9.9])
	cylinder(r=3.3, h=2.3, center=true, $fn=6);
	}

	//connector pass

    rotate( 60, [0, 0, 1])
    translate([-5.25, 0, 6])
    	cube([10.5, 21, 15]);

    rotate( 60, [0, 0, 1])
    translate([-5.25, 21, 9])
    rotate( 60, [1, 0, 0])
    	cube([10.5, 14, 12]);
}


module inner_part()
{
	translate([0, 0, 0])
		cylinder(h = 4, r = 7.65);
	translate([0, 0, 4])
		cylinder(h = 2, r = 21.5);
	translate([0, 0, 6])
		cylinder(h = 15.7, r = 14.25, $fn=48);
	translate([0, 0, 21.7])
		cylinder(h = 4, r = 7.8, $fn=48);
	translate([0, 0, 25.7])
		cylinder(h = 2.5, r = 4.5, $fn=48);
	translate([0, 0, -3])
		cylinder(h = 90, r = 3, $fn=24);

 	// long screw slit

	rotate( 150, [0, 0, 1])
	translate([0, -1, 28])
		cube([9, 2, 63]);

 	// motor side slits

   difference() {
   union() {
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 , [0, 0, 1])
			translate([0, -4, 11])
				cube([40, 8, 20]);
	}
}
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +30, [0, 0, 1])
			translate([0, -9, 11])
				cube([40, 18, 20]);
	}
}
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +60, [0, 0, 1])
			translate([0, -4, 11])
				cube([40, 8, 20]);
	}
  }
}
// remove garbage, motor cap
	translate([0, 0, 20])
		cylinder(h = 4, r1 = 10, r2=12, $fn=48);
	translate([0, 0, 24])
		cylinder(h = 11, r = 12, $fn=48);

}
}
//
//difference() {
difference() {
	outer_part();
	inner_part();
}
// additional ribs

	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +90, [0, 0, 1])
			translate([9.1, -3.5, 21.7])
				cube([4.6, 6.8, 4.8]);
  }
 }

//			translate([0, 0, -20])
//				cube([100, 100, 100]);
//}
