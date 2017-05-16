  GNU nano 2.5.3               File: /var/tmp/initXX6KrZja.pp                                    

class omamoduuli {
        package { 'apache2':
                ensure => installed,
                allowcdrom => "true",
        }



        file {'/var/www/html/index.html':
                require => package['apache2'],
                content => "<h1> Oma moduuli</h1> This module also creates a home directory for $

        }

        exec {'rm /var/www/html/index.html':
                command => 'sudo rm /var/www/html/index.html',
                path => ['/bin', '/usr/bin̈́'],
                require => package['apache2'],
        }

        user {'kaveri':
                ensure => 'present',
                managehome => true,

        }
}


