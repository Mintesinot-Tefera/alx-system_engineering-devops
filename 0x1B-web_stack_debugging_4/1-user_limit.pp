# Enable the user holberton to login and open files without error.

exec { 'change soft limit':
    command  => 'sudo sed -i "s/holberton\ssoft.*/holberton\tsoft\tnofile\t10000/" /etc/security/limits.conf',
    provider => shell,
}

exec { 'change hard limit':
    command  => 'sudo sed -i "s/holberton\shard.*/holberton\thard\tnofile\t100000/" /etc/security/limits.conf',
    provider => shell,
}
