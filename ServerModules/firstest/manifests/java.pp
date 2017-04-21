# Class#
#
class firstest::java(
    $name = 'jdk6',
    $version = '6',
    $se = 'jdk'
) {
    # resources
    #install java
    java::oracle { $name :
        ensure  => 'present',
        version => $version,
        java_se => $se,
    }
}