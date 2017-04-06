# Class: 
#
#
class apache::purge inherits apache::params{
    # resources
    #$package_name = $facts['os']['family'] ? {
    #    'RedHat' => 'httpd',
    #    'Debian' => 'apache2',
    #}

    package { $apache::params::package_name :
        ensure => purged,
    }
}