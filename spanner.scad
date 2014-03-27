//
// PFCL25 motor extruder syringe holder spanner
// Assemble with three countersunk head long M3 bolts & nuts
//

difference () {
union () {
translate([0, 0, 0]) cylinder(h=1.75,r1=29, r2=30, $fn=32);
translate([0, 0, 1.75]) cylinder(h=2.5,r=30, $fn=64);	
translate([0, 0, 4.25]) cylinder(h=1.75,r1=30, r2=29, $fn=32);
translate([0, 0, 6]) cylinder(h=1,r1=20, r2=19, $fn=32);
}

union () {
translate([0, 0, -7]) cylinder(h=20,r=10, $fn=32);	
translate([0, 0, 4]) cylinder(h=3,r1=10, r2=10 +1.5, $fn=32);

// 3 screws
	for ( i = [0 : 2] ) {
			rotate( i * 360 / 3 +30, [0, 0, 1]) {
			translate([15, 0, -2])
				cylinder(h=10,r=1.6, $fn=64);
// 3 screw dishes
		rotate(30)
		translate([0, 15, 0])
			cylinder(h=2.25,r1=3.15,r2=1.7, $fn=32);

// M3 nut holder
		rotate(30)
      translate([0, 15, 4.7])
	cylinder(r=3.3, h=2.3, $fn=6);
  }
 }

//six cuts

	for ( i = [0 : 5] ) {
		rotate( i * 360 / 6 +30, [0, 0, 1]) {
		translate([0, 31, 0])
			cylinder(h = 1.75,r1=11, r2=10, $fn=32);
		translate([0, 31, 1.75])
			cylinder(h = 2.5, r = 10, $fn=32);
		translate([0, 31, 4.25])
			cylinder(h = 1.75,r1=10, r2=11, $fn=32);
     }
	}

 }
}

