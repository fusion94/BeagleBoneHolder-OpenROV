//translate(v = [0,0,1]) color("blue") import("HolderOpenROVCleanFixed.stl");
beagleboard();


module beagleboard() {
	union() {
		difference() {
			translate(v = [-2,-1,0]) cube(size = [59,88,3]);

			// Bolt Holes
			translate(v = [6.4,5.8,-3]) cylinder(r = 2, h = 10);
			translate(v = [48.5,5.8,-3]) cylinder(r = 2, h = 10);
			translate(v = [2.9,71.5,-3]) cylinder(r = 2, h = 10);
			translate(v = [52,71.5,-3]) cylinder(r = 2, h = 10);
		}
		// Risers
		translate(v = [6.4,5.8,2.5]) riser(4);
		translate(v = [48.5,5.8,2.5]) riser(4);
		translate(v = [2.9,71.5,2.5]) riser(3);
		translate(v = [52,71.5,2.5]) riser(3);

	
		// Camera Holder
		translate(v = [-1,0,0]) difference() {
			union() {
				translate(v = [-32,59,0]) cube(size = [32,28,10]); // h = 25
				// Extra Camera Support
				translate(v = [-1.5,61,2]) cube(size = [4,25,4]);
			}
			translate(v = [-50,46,-5]) rotate(a = [0,0,-18]) cube(size = [50,30,48]);
			translate(v = [0,0,-1]) hull() {
				translate(v = [-22.5,78,0]) cylinder(r = 6, h = 50, $fn=30);
				translate(v = [-8.5,78,0]) cylinder(r = 6, h = 50, $fn=30);
			}
		}


	}
}


module riser(rad) {
	difference() {
		cylinder(r = rad, h = 4);
		translate(v = [0,0,-5]) cylinder(r = 2, h = 16);
	}
}
