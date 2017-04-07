# Class#
#
class apache::service inherits apache::params{
    # resources
    #$package_name = $facts['os']['family'] ? {
    #    'RedHat' => 'httpd',
    #    'Debian' => 'apache2',
    #}



    service { $apache::params::package_name :
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        subscribe  => File['/var/www/html/index.html'],
        # pattern    => ,
    }
}