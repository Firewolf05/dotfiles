if [ $(bspc query -M -m .focused --names) == "HDMI-A-0" ]; then 
    if [ $1 == "1" ]; then 
        var="1"
    elif [ $1 == "2" ]; then 
        var="2"
    elif [ $1 == "3" ]; then 
        var="6"
    elif [ $1 == "4" ]; then 
        var="7"
    elif [ $1 == "5" ]; then 
        var="8"
    fi
else 
    if [ $1 == "1" ]; then 
        var="3"
    elif [ $1 == "2" ]; then 
        var="4"
    elif [ $1 == "3" ]; then 
        var="5"
    elif [ $1 == "4" ]; then 
        var="9"
    elif [ $1 == "5" ]; then 
        var="0"
    fi
fi
bspc desktop -f $var 