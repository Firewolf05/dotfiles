if [ $(playerctl metadata -f '{{playerName}}') == 'spotify' ]
then
    echo $(playerctl metadata -f '{{artist}} - {{title}}' | sed -E 's/(.{30}).+/\1.../') 
fi