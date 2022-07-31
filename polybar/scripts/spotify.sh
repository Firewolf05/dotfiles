#if [ $(playerctl metadata -f '{{playerName}}') == 'spotify' ]
if pgrep spotify >/dev/null ; then
    echo $(playerctl --player=spotify metadata -f '{{artist}} - {{title}}')
fi