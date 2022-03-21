if [ $(playerctl metadata -f '{{playerName}}') == 'firefox' ]
then
    echo $(playerctl metadata -f '{{title}}' | sed -E 's/(.{30}).+/\1.../') 
fi


