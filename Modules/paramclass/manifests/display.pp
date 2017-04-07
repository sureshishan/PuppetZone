# Class: 
#
#
class paramclass::display (
    $decisionVariable=0
) {
    # resources
    #$decisionVariable = 0

    if $decisionVariable == 0 {
        notify { '0' : } 
    }else {
        notify { 'value': } 
        
    }
}