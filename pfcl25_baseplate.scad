//
// PFCL25 motor extruder base plate
//

difference () {
union () {
translate([0, 0, 0]) cylinder(h=6.25,r=27, $fn=64);	

	// six sleeves
			for ( i = [0 : 5] ) {
		rotate( i * 360 / 6 +30, [0, 0, 1])
		translate([0, 27, 0])
			cylinder(h = 6.25, r = 4.5, $fn=32);
	}
}

union () {
translate([0, 0, -7]) cylinder(h=20,r=7.85, $fn=32);	
translate([0, 0, 3]) cylinder(h=2,r1=7.85, r2=7.85 +1, $fn=32);

	//3 holes for platform

	for ( i = [0 : 2] ) {
		rotate( i * 360 / 3+30 , [0, 0, 1])
		translate([0, 17.5, -1])
			cylinder(h = 15, r = 1.7, $fn=32);

		rotate( i * 360 / 3+30 , [0, 0, 1])
		translate([0, 17.5, 0])
			cylinder(h=2.25,r1=3.15,r2=1.7, $fn=32);
	}

//six holes

	for ( i = [0 : 5] ) {
		rotate( i * 360 / 6 +30, [0, 0, 1])
		translate([0, 27, -2])
			cylinder(h = 15, r = 1.25, $fn=32);
	}

// 2 barrels
translate([0, 17.75, 4.5]) cylinder(h=10,r=3.65, $fn=32);
translate([0, -17.75, 4.5]) cylinder(h=10,r=3.65, $fn=32);

// 2 mount holes
translate([0, 17.75, -1]) cylinder(h=10,r=1.7, $fn=32);
translate([0, -17.75, -1]) cylinder(h=10,r=1.7, $fn=32);

// 2 dishes
translate([0, 17.75, 0]) cylinder(h=2.25,r1=3.15,r2=1.7, $fn=32);
translate([0, -17.75, 0]) cylinder(h=2.25,r1=3.15,r2=1.7, $fn=32);

//center barrel
translate([0, 0,4.5]) cylinder(h=10,r=12.25, $fn=32);

// fins
translate([5, 2.9, 4.5]) rotate([0, 0, 29]) cube([6.5, 15, 10]);
translate([-5, -2.9, 4.5]) rotate([0, 0, 180+29]) cube([6.5, 15, 10]);

translate([-1.7, -15.8, 4.5]) rotate([0, 0, 360-29]) cube([6, 15, 10]);
translate([1.7, 15.8, 4.5]) rotate([0, 0, 180-29]) cube([6, 15, 10]);

// remove garbage
translate([-1, -15, 4.5]) rotate([0, 0, 0]) cube([2, 30, 5]);

 }
}

//translate([0, 0, 0]) cylinder(h=12,r=25, $fn=64);	
