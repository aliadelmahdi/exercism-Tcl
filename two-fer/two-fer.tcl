#!/usr/bin/env tclsh

proc two-fer {{name ""}} {
    if {$name ne ""} {
        return "One for $name, one for me."
    } else {
        return "One for you, one for me."
    }
}
puts [two-fer]
puts [two-fer "Ali"]