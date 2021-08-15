# this Puppet manifest creates a file in /tmp with the following attributes
file {'/tmp/holberton':
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
