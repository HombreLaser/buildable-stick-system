/*
 * SPDX-FileCopyrightText: © 2023 Brian S. Stephan <bss@incorporeal.org>
 * SPDX-FileCopyrightText: © 2023 Luis Sebastián <buran@silosneeded.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

include <parameters.scad>
include <components.scad>

module sega_2p_panel_3mm_thick_top() {
    difference() {
        panel();
        sega_2p_outline();
    }
}

sega_2p_panel_3mm_thick_top();