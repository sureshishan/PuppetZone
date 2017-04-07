# Class: 
#
#
class classparams::service inherits classparams::params {
    # resources
    service { classparams::params::package_name :
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        subscribe => File['/var/ww/html/index.html']
        # pattern    => classparams::params::package_name ,
    }
}