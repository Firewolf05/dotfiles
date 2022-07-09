if [ $(playerctl metadata -f '{{playerName}}') == 'firefox' ]
then
    echo  $(playerctl metadata -f '{{artist}}' | sed "s/ - Topic//g" && echo "-" && playerctl metadata -f '{{title}}')
fi

