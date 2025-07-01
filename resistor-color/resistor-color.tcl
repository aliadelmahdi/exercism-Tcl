#!/usr/bin/env tclsh

namespace eval resistorColor {
    variable color_list [list black brown red orange yellow green blue violet grey white]

    proc colorCode {color_name} {
            set index [lsearch -exact [resistorColor::colors] $color_name]
            if {$index == -1} {
                error "Invalid color: $color_name"
            } else {
                return $index
            }
    }

    proc colors {} {
        variable color_list
        return $color_list
    }
}
puts [resistorColor::colorCode red]