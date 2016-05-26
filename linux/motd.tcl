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

# * Calculate last login
set lastlog [exec -- lastlog -u $var(user)]
set ll(1)  [lindex $lastlog 7]
set ll(2)  [lindex $lastlog 8]
set ll(3)  [lindex $lastlog 9]
set ll(4)  [lindex $lastlog 10]
set ll(5)  [lindex $lastlog 6]

# * Calculate current system uptime
set uptime    [exec -- /usr/bin/cut -d. -f1 /proc/uptime]
set up(days)  [expr {$uptime/60/60/24}]
set up(hours) [expr {$uptime/60/60%24}]
set up(mins)  [expr {$uptime/60%60}]
set up(secs)  [expr {$uptime%60}]

# * Calculate usage of home directory
set usage [lindex [exec -- /usr/bin/du -ms $var(home)] 0]
set drive [lindex [exec -- /usr/bin/df -h /] 10]

# * Calculate SSH logins:
set logins     [exec -- w -s]
set log(c)     [lindex $logins 4]

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
set sysload(1)  [lindex $loadavg 0]
set sysload(5)  [lindex $loadavg 1]
set sysload(15) [lindex $loadavg 2]

# * Calculate Memory
set memory  [exec -- free -m]
set mem(t)  [lindex $memory 7]
set mem(u)  [lindex $memory 8]
set mem(f)  [lindex $memory 9]
set mem(c)  [lindex $memory 20]

# * ASCII head
set head {               __   __                   __  __ _       _   
               \ \ / /                  |  \/  (_)     | |  
                \ V / __ _ ___  ___ _ __| \  / |_ _ __ | |_ 
                 > < / _` / __|/ _ \ '__| |\/| | | '_ \| __|
                / . \ (_| \__ \  __/ |  | |  | | | | | | |_ 
               /_/ \_\__,_|___/\___|_|  |_|  |_|_|_| |_|\__|
}

# * Print Output
puts "\033\[01;32m$head\033\[0m"
puts "  \033\[35mLast Login....:\033\[0m \033\[36m$ll(1) $ll(2) $ll(3) $ll(4) from\033\[0m \033\[33m$ll(5)\033\[0m"
puts "  \033\[35mUptime........:\033\[0m \033\[36m$up(days) days $up(hours) hours $up(mins) minutes $up(secs) seconds\033\[0m"
puts "  \033\[35mLoad..........:\033\[0m \033\[36m$sysload(1) (1 minute) $sysload(5) (5 minutes) $sysload(15) (15 minutes)\033\[0m"
puts "  \033\[35mMemory........:\033\[0m \033\[36m$mem(t)MB -Used: $mem(u)MB -Free: $mem(f)MB -Swap: $mem(c)MB \033\[0m"
puts "  \033\[35mDisk Usage....:\033\[0m \033\[36mYou're using ${usage}MB in $var(home), ${drive}B available\033\[0m"
puts "  \033\[35mSSH Logins....:\033\[0m \033\[36mThere are currently $log(c) users logged in\033\[0m"
puts "  \033\[35mProcesses.....:\033\[0m \033\[36m$psa processes running, $psu under $var(user)\033\[0m"

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
