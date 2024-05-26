/*
 * SPDX-FileCopyrightText: © 2023 Brian S. Stephan <bss@incorporeal.org>
 * SPDX-FileCopyrightText: © 2023 Luis Sebastián <buran@silosneeded.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

include <parameters.scad>
include <components.scad>

module top_panel_left_lever() {
	difference() {
		// base plate
		panel_with_raised_overhang();
		// holes to mount the lever
		translate([0, 20, 0]) koreanlevermountholes();
		translate([0, 20, 0]) koreanlevermountcountersinks();
		side_chopper();
	}
}

top_panel_left_lever();