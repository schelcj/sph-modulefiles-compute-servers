namespace eval ::biostat {
  namespace export bold license
}

proc ::biostat::license {app version} {
  if {[module-info mode load]} {
    puts stderr "\n\tThere are a limited number of license for $app"
    puts stderr "\tRequest the license for your job like so:"
    puts stderr "\t\t#SBATCH [bold --licenses=$app]"
    puts stderr "\tThis requests one license for $app\n"
  }
}

# Brackets $args in the "bold" terminal escapes 
# boldly ripped from CAC, thx
proc ::biostat::bold {args} {
    return "\033\[0;1m$args\033\[0;0m"
}
