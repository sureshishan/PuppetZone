# Class: 
#
#
class apache::homepage {
    # resources
    file { '/var/www/html/index.html':
        ensure => file,
        #source => 'puppet:///modules/class/file.txt';
        content => file('apache/index.html')
    }

    service { $package_name :
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart    => ,
        # pattern    => 'name',
    }
}