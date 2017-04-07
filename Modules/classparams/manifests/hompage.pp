# Class: 
#
#
class classparams::homepage inherits classparams::params {
    # resources
    file { '/var/www/html/index.html' :
        ensure => file,
        #source => 'puppet:///modules/class/file.txt';
        content => file('classparams/index.html'),
        notify => Service["${classparams::params::package_name}"]
    }
}