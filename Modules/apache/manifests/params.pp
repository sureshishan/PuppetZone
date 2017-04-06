# Class: 
#
#
class apache::params {
    # resources
    $package_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }
}