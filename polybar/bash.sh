if [ $(playerctl metadata -f '{{playerName}}') == 'firefox' ]
then
    STR="self = #ff5555"
fi
if [ $(playerctl metadata -f '{{playerName}}') == 'spotify' ]
then 
    STR="self = #50fa7b" 
fi 
echo $STR > /home/george/.config/polybar/colorvalue.ini