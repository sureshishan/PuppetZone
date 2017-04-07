# Class: 
#
#
class classparams::uninstall inherits classparams::params {
    # resources
    package { $classparams::params::package_name : 
        ensure => purged,
    }
}