# This manifest changes the ssh configuration file
exec {'/etc/ssh/ssh_config':
path     => '/bin',
command  => 'echo "    IdentityFile ~/.ssh/holberton\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
provider => 'shell',
}
