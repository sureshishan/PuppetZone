# Class: 
#
#
class apache::install {
    # resources
    $package_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }

    package { $package_name :
        ensure => installed,
    }
}