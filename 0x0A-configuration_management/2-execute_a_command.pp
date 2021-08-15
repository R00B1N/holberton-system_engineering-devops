# this Puppet manifest kills a process named killmenow
exec {'killmenow':
path     => '/usr/bin',
command  => 'pkill killmenow',
provider => 'shell',
}
