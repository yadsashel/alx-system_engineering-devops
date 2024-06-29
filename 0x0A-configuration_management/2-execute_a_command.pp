# This manifest kills the process named 'killmenow' using pkill
exec { 'kill_killmenow':
  command => '/usr/bin/pkill killmenow',
}
