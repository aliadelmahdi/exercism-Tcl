#!/usr/bin/env tclsh

proc custom_error_message {message} {
    error "$message"
}

proc handle_error {script} {
    try {
        uplevel 1 $script
        return "success"
    } on error {err arg} {
        switch -glob $err {
            "divide by zero"        { return "division by zero: $err, arg: $arg" }
            "couldn't open*"        { return "file does not exist" }
            "invalid command name*" { return "proc does not exist" }
            default                 { return "Unrecognized error: $err" }
        }
    }
}
puts [handle_error {expr {1 / 0}}]