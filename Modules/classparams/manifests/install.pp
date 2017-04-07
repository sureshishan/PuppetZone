# Class: 
#
#
class classparams::install inherits classparams::params {
    # resources
    package { $classparams::params::package_name :
        ensure => installed,
        before => File['/var/www/html/index.html']
    }
}