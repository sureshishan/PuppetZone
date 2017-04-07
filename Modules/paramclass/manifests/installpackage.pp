# Class: 
#
#
class paramclass::installpackage (
    $package_name
) {
    # resources
    package { $package_name:
        ensure => installed,
    }
    service { $package_name :
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => 'name',
    }
}