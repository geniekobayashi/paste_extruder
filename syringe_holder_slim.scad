//
// PFCL25 motor extruder syringe holder (old)
// 5cc syringe is available at eBay
//

difference () {
union () {
translate([0, 0, -11]) cylinder(h=10,r1=9.25,r2=12, $fn=64);
translate([0, 0, -1]) cylinder(h=7.5,r=17.8, $fn=128);		
translate([0, 0, 6.5]) cylinder(h=1.5,r1=17.8,r2=17, $fn=128);	

}

union () {
// syringe path
translate([0, 0, -11]) cylinder(h=30,r=7.5, $fn=32);	
translate([0, 0, 4]) cylinder(h=2,r1=7.5, r2=7.5 +1, $fn=32);

// 2 barrels
translate([0, 9, 5]) cylinder(h=10,r=7.1, $fn=32);
translate([0, -9, 5]) cylinder(h=10,r=7.1, $fn=32);

//center block
translate([0, 0,12]) cube([19, 12.1, 14], center=true);

// fins
translate([4.2, 3.3, 5]) rotate([0, 0, 28]) cube([6, 8, 10]);
translate([-4.2, -3.3, 5]) rotate([0, 0, 180+28]) cube([6, 8, 10]);

translate([0.5, -10.3, 5]) rotate([0, 0, 360-28]) cube([6, 8, 10]);
translate([-0.5, 10.3, 5]) rotate([0, 0, 180-28]) cube([6, 8, 10]);

// 3 slits
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +90, [0, 0, 1])
			translate([7, -1.5, -12])
				cube([5.3, 3, 10]);
  }
// 6 tool dips
	for ( i = [0 : 5] ) {
			rotate( i * 360 / 6-30, [0, 0, 1])
			translate([15, 0, -7])
				cylinder(h=10,r=1.7, $fn=64);
   }
  }
 }
}
difference () {
 difference () {
 union () {
// 3 wings
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +70, [0, 0, 1])
			translate([17, -2.9, 0])
				cube([5.3, 5.8, 4.4]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +80, [0, 0, 1])
			translate([17, -2.9, 0])
				cube([5.3, 5.8, 4.4]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +90, [0, 0, 1])
			translate([17, -2.9, 0])
				cube([5.3, 5.8, 4.4]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +100, [0, 0, 1])
			translate([17, -2.9, 0])
				cube([5.3, 5.8, 4.4]);
  }
 }
	for ( i = [0 : 2] ) {
		difference() {
			rotate( i * 360 / 3 +110, [0, 0, 1])
			translate([17, -2.9, 0])
				cube([5.3, 5.8, 4.4]);
  }
 }
}

// wings edge cut

difference () {
translate([0, 0, 0]) cylinder(h=5,r=30);
union() {
translate([0, 0, 3.9]) cylinder(h=0.5,r1=21.75, r2=21.25, $fn=128);
translate([0, 0, 0.5]) cylinder(h=3.4,r=21.75, $fn=128);
translate([0, 0, 0]) cylinder(h=0.5,r1=21.25,r2=21.75, $fn=128);
  }
 }
}

// wings slant edge

	for ( i = [0 : 2] ) {
			rotate( i * 360 / 3 , [0, 0, 1])
			translate([17.6, -3, -4.9])
				rotate( 10, [1, 0, 0])
				rotate( -3.5, [0, 0, 1])
				cube([20, 6, 5]);

			rotate( i * 360 / 3 , [0, 0, 1])
			translate([17.6, -3, 4.4])
				rotate( -10, [1, 0, 0])
				rotate( -3.5, [0, 0, 1])
				cube([20, 6, 5]);
 }
}
