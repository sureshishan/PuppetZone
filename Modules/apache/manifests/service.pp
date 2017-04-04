# Class#
#
class apache::service {
    # resources
    $package_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }

    service { $package_name :
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => ,
    }
}