/*
 * SPDX-FileCopyrightText: © 2024 Brian S. Stephan <bss@incorporeal.org>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

include <parameters.scad>
include <components.scad>
use <frame-piece-bottom-left-or-right.scad>

module bottom_piece_wall(lower=false) {
	// get a slice of the piece, to use it in extruding
	projection(cut=true) rotate([-90, 0, 0]) translate([0, frame_y/2-frame_bevel_height, 0])
		bottom_left_or_right_frame_piece(lower=lower);
}

module bottom_piece_extension(lower=false) {
	// combine the original with a shrunken piece to "pull" the wall out
	hull() {
		linear_extrude(height=frame_extension_y) scale([1, 0.5, 1]) bottom_piece_wall();
		linear_extrude(height=frame_bevel_height) bottom_piece_wall(lower=lower);
	}
}

module extended_bottom_left_or_right_frame_piece(lower=false) {
	bottom_left_or_right_frame_piece(lower=lower);
	translate([0, -frame_y/2+frame_bevel_height*2, 0]) rotate([90, 0, 0]) bottom_piece_extension(lower=lower);
}

extended_bottom_left_or_right_frame_piece();
