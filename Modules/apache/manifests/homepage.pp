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

    #package_name=$facts['os']['family'] ? {
    #    'RedHat' => 'httpd',
    #    'Debian' => 'apache2',
    #}

    service { $apache::params::package_name :
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart    => "",
        # pattern    => 'name',
    }
}