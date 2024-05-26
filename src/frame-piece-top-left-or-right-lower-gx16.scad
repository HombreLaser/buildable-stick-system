/*
 * SPDX-FileCopyrightText: © 2023 Brian S. Stephan <bss@incorporeal.org>
 * SPDX-FileCopyrightText: © 2023 Luis Sebastián <buran@silosneeded.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

include <parameters.scad>
include <components.scad>
use <frame-left-gx16.scad>

module top_left_or_right_frame_piece_gx16(lower=false) {
    piece_width = panel_support_width+frame_wall+frame_mount_column_width;

	intersection() {
		left_frame_gx16(lower=lower);
		difference() {
			// include the whole top wall (including mount columns)
			translate([0, (frame_y/2)-(piece_width/2), 0]) cube([frame_x, piece_width, frame_z], center=true);
			// ...minus the frame wall and lip on the left
			translate([-frame_x/2+frame_wall/2, 0, 0])
				cube([frame_wall, frame_y, frame_z], center=true);
			// ...minus a slot for the combining piece to go into
			cube([frame_x, frame_y-(panel_support_width+frame_wall)*2, frame_z/4], center=true);
		}
	}
}

top_left_or_right_frame_piece_gx16(lower=true);