# Class: 
#
#
class classparams::params {
    # resources
    $package_name = $fats['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }
}