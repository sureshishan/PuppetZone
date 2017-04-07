# Class:
#
#
class classparams::homepage(
    $local_file_name = 'index',
    $homepage_location = '/var/www/html/index.html'
) inherits classparams::params {
    # resources
    file { $homepage_location :
        ensure => file,
        #source => 'puppet:///modules/class/file.txt';
        content => file("classparams/${local_file_name}.html"),
        notify => Service["${classparams::params::package_name}"]
    }
}
