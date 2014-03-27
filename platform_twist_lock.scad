//
// PFCL25 motor extruder body merged with Rostock effector
//

include <configuration.scad>
use <carriage_micro_opto.scad>

h=platform_thickness;

cutout = 12.5;
inset = 6;

$fn = 50;

difference() {
    union() {
    union() {
	difference() {
      for (a = [0:120:359]) {
        rotate([0, 0, a+60]) {
          translate([0, -platform_hinge_offset+1, -4]) parallel_joints();
		// fill triangle gaps
			rotate(90) translate([24, -4.5, -8]) cube([8, 9, 8]);
		// fill hinge outer R
			rotate(90) translate([33, -5, -8]) cube([8, 10, 8]);
        }
      }
		translate([0, 0, -8]) cylinder(h=12,r=26, $fn=64);
	}
	// six sleeves
			for ( i = [0 : 5] ) {
		rotate( i * 360 / 6 +30, [0, 0, 1])
		translate([0, 27, -8])
			cylinder(h = 12, r = 4.5, $fn=32);
	}
  }

difference () {
		translate([0, 0, -8]) cylinder(h=12,r=27, $fn=64);	
		translate([0, 0, 0]) cylinder(h=8,r=18, $fn=64);		
	difference () {
		difference () {
		union () {
		// 3 wings
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +70, [0, 0, 1])
			translate([17, -3.3, 0])
				cube([5.3, 6.6, 4.75]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +80, [0, 0, 1])
			translate([17, -3, 0])
				cube([5.3, 6, 4.75]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +90, [0, 0, 1])
			translate([17, -3, 0])
				cube([5.3, 6, 4.75]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +100, [0, 0, 1])
			translate([17, -3, 0])
				cube([5.3, 6, 4.75]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +110, [0, 0, 1])
			translate([17, -3.3, 0])
				cube([5.3, 6.6, 4.75]);
  }
 }
}
difference () {
	translate([0, 0, 0]) cylinder(h=5,r=30);
	translate([0, 0, 0]) cylinder(h=5,r=22.3, $fn=64);
  }
 }
}
union () {
	translate([0, 0, -5]) cylinder(h=5,r=22.3, $fn=64);	
	translate([0, 0, -8]) cylinder(h=15,r=18, $fn=64);	
 }
}

// inner stops
	for ( i = [0 : 2] ) {
			rotate( i * 360 / 3 +4, [0, 0, 1])
			translate([18, -1, -7])
				cube([5.3, 2, 11]);
}
// outer ribs
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +30, [0, 0, 1])
			translate([22.5, -3, -8])
				cube([8, 6, 15]);
			rotate( i * 360 / 3 +30, [0, 0, 1])
			rotate(45, [0, 1, 0])
			translate([14, -3.5, 24.5])
				cube([8, 7, 16]);
	}
		difference() {
			rotate( i * 360 / 3 +30, [0, 0, 1])
			translate([18.5, -3, 3])
				cube([8, 6, 4]);
			rotate( i * 360 / 3 +30, [0, 0, 1])
			rotate(45, [0, 1, 0])
			translate([2.7, -3.5, 15])
				cube([8, 7, 10]);

 }
}
}

union() {

//six holes

	for ( i = [0 : 5] ) {
		rotate( i * 360 / 6 +30, [0, 0, 1])
		translate([0, 27, -9])
			cylinder(h = 15, r = 1.75, $fn=32);
	}
// hinge outer R
    for (a = [0:2]) {
      rotate(a*120+60) {
        translate([0, 50.23, -9])
          cylinder(r=10, h=10, $fn=60);
	}
  }
 } 
}

