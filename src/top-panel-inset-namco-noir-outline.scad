/*
 * SPDX-FileCopyrightText: © 2023 Brian S. Stephan <bss@incorporeal.org>
 * SPDX-FileCopyrightText: © 2023 Luis Sebastián <buran@silosneeded.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */
 
 include <components.scad>
 include <parameters.scad>
 
 module namco_noir_panel_outline() {
    difference() {
        panel();
        noir_outline();
    }
}

namco_noir_panel_outline();