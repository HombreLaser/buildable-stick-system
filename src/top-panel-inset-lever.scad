/* Copyright Brian Stephan 2023
 *
 * This file is part of the Buildable Stick System.
 *
 * The Buildable Stick System is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version.
 *
 * The Buildable Stick System is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * the Buildable Stick System. If not, see <https://www.gnu.org/licenses/>.
 */

include <parameters.scad>
include <components.scad>

// combine the lever mount and generic plate, with mounting holes
module lever_panel() {
	difference() {
		// base plate
		union() {
			translate([0,-20,0])
				topplate();
			translate([0, 0, -((top_plate_z/2)+(lever_mount_z/2))])
				levermountbase();
		}
		// holes to mount the lever
		levermountholes();
	}
}

lever_panel();
