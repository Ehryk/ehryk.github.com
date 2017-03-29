#!/usr/bin/tclsh
# MOTD script original? / mod mewbies.com v.03 2013 Sep 01

# * Variables
set var(user) $env(USER)
set var(path) $env(PWD)
set var(home) $env(HOME)

# * Check if we're somewhere in /home
#if {![string match -nocase "/home*" $var(path)]} {
#if {![string match -nocase "/home*" $var(path)] && ![string match -nocase "/usr/home*" $var(path)] } {
#  return 0
#}

# * Calculate last login information
set lastlog      [lindex [split [exec -- last $var(user)] "\n"] 1]
set ll(date)     [string cat [lrange $lastlog end-6 end-3]]
set ll(in)       [lindex $lastlog end-2]
if { $ll(in) ne "still" } {
	set ll(fulldate) [string cat $ll(date) " " [lindex $lastlog end]]
} else {
	set ll(fulldate) [string cat $ll(date) " (still logged in)"]
}
set ll(port)     [lindex $lastlog 1]
set ll(from)     [lindex $lastlog 2]
set ll(pts)      [string first "pts" $ll(port)]
if { $ll(pts) == 0 } {
	set ll(disp)  [string cat $ll(port) " " $ll(from)]
} else {
	set ll(disp)  [string cat $ll(port)]
}

# * Calculate current system uptime
set uptime    [exec -- /usr/bin/cut -d. -f1 /proc/uptime]
set up(days)  [expr {$uptime/60/60/24}]
set up(hours) [expr {$uptime/60/60%24}]
set up(mins)  [expr {$uptime/60%60}]
set up(secs)  [expr {$uptime%60}]

# * Calculate usage of home directory
set usage [lindex [exec -- /usr/bin/du -ms $var(home)] 0]
set drive [lindex [exec -- /usr/bin/df -h $var(home)] 10]

# * Calculate current user count:
set logins  [lindex [split [exec -- w -s] "\n"] 0]
set log(c)  [lindex $logins end-6]

# * Calculate processes
set psa [expr {[lindex [exec -- ps -A h | wc -l] 0]-000}]
set psu [expr {[lindex [exec -- ps U $var(user) h | wc -l] 0]-002}]
set verb are
if [expr $psu < 2] {
	if [expr $psu = 0] {
		set psu none
	} else {
		set verb is
		}
}

# * Calculate current system load
set loadavg     [exec -- /bin/cat /proc/loadavg]
set sysload(1)  [format {%0.0f%%} [expr {[lindex $loadavg 0] * 100}]]
set sysload(5)  [format {%0.0f%%} [expr {[lindex $loadavg 1] * 100}]]
set sysload(15) [format {%0.0f%%} [expr {[lindex $loadavg 2] * 100}]]

# * Calculate Memory
set memory  [exec -- free -m]
set mem(t)  [lindex $memory 7]
set mem(u)  [lindex $memory 8]
set mem(f)  [lindex $memory 9]
set mem(c)  [lindex $memory 16]

# * ASCII head
set head {                 ___                                        
                -   -_,            ,,    _-_-      -__ /\\  
               (  ~/||             ||      /,        ||  \\ 
               (  / ||  ,._-_  _-_ ||/\\   || __    /||__|| 
                \/==||   ||   ||   || ||  ~||-  -   \||__|| 
                /_ _||   ||   ||   || ||   ||===||   ||  |, 
               (  - \\,  \\,  \\,/ \\ |/  ( \_, |  _-||-_/  
                                     _/         `    ||    
}

# * Print Output
puts "\033\[01;32m$head\033\[0m"
puts "  \033\[35mLast Login....: \033\[01;36m$ll(fulldate)\033\[00;36m from \033\[01;33m$ll(disp)\033\[0m"
puts "  \033\[35mUptime........: \033\[01;36m$up(days)\033\[00;36m days \033\[01;36m$up(hours)\033\[00;36m hours \033\[01;36m$up(mins)\033\[00;36m minutes \033\[01;36m$up(secs)\033\[00;36m seconds\033\[0m"
puts "  \033\[35mLoad..........: \033\[01;36m$sysload(1)\033\[00;36m (1 minute) \033\[01;36m$sysload(5)\033\[00;36m (5 minutes) \033\[01;36m$sysload(15)\033\[00;36m (15 minutes)\033\[0m"
puts "  \033\[35mMemory........: \033\[01;36m$mem(t)MB\033\[00;36m. Used: \033\[01;33m$mem(u)MB\033\[00;36m, Free: \033\[01;33m$mem(f)MB\033\[00;36m (Swap: \033\[01;36m$mem(c)MB\033\[00;36m)\033\[0m"
puts "  \033\[35mDisk Usage....: \033\[36mYou're using \033\[01;33m${usage}MB\033\[00;36m in \033\[01;36m$var(home)\033\[00;36m, \033\[01;33m${drive}B\033\[00;36m available\033\[0m"
puts "  \033\[35mSSH Logins....: \033\[36mThere are currently \033\[01;33m$log(c)\033\[00;36m users logged in\033\[0m"
puts "  \033\[35mProcesses.....: \033\[01;33m$psa\033\[00;36m processes running, \033\[01;33m$psu\033\[00;36m under \033\[01;36m$var(user)\033\[0m"

if {[file exists /etc/changelog]&&[file readable /etc/changelog]} {
  puts " . .. More or less important system informations:\n"
  set fp [open /etc/changelog]
  while {-1!=[gets $fp line]} {
    puts "  ..) $line"
  }
  close $fp
  puts ""
}

puts ""
