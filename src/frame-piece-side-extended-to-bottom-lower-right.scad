include <parameters.scad>
include <components.scad>
use <frame-piece-top-left-or-right.scad>
use <frame-piece-bottom-left-or-right.scad>
use <frame-piece-side-extended-to-bottom.scad>

module side_frame_piece() {
    piece_width = panel_support_width+frame_wall+frame_mount_column_width;

	difference() {
        rotate([0, 180, 0]) frame(lower=true);
            top_left_or_right_frame_piece();
		bottom_left_or_right_frame_piece();
		translate([piece_width, 0, 0]) cube([frame_x, frame_y+1, frame_z+1], center=true);
    }
}

module extra_extended_lower_right_frame_piece() {
    difference() {
        side_frame_piece();
        translate([-frame_x/2+frame_bevel_height/2, 0, 0]) cube([frame_bevel_height, frame_y, frame_z], center=true);
    }
    
    translate([-frame_x/2+frame_bevel_height*2, 0, 0]) rotate([0, -90, 0]) side_and_bottom_frame_piece_extension();
}

rotate([0, 180, 0])
    extra_extended_lower_right_frame_piece();