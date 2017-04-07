# Class: 
#
#
class apache::install inherits apache::params{
    # resources
    #$package_name = $facts['os']['family'] ? {
    #    'RedHat' => 'httpd',
    #    'Debian' => 'apache2',
    #}

    package { $apache::params::package_name :
        ensure => installed,
        before => File['/var/www/html/index.html']
    }
}