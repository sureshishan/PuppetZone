# Class:
#
#
class classparams::params {
    # resources
    $package_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }

    $home_page_location = '/var/www/html/index.html'
}
