if [ -f ~/.jgmenu-lockfile ]; then
    del ~/.jgmenu-lockfile
    pgrep jgmenu >/dev/null && pkill jgmenu && jgmenu --csv-file=/home/george/.config/jgmenu/polybar.csv || jgmenu --csv-file=/home/george/.config/jgmenu/polybar.csv
else 
    pgrep jgmenu >/dev/null && pkill jgmenu && jgmenu --csv-file=/home/george/.config/jgmenu/polybar.csv || jgmenu --csv-file=/home/george/.config/jgmenu/polybar.csv
fi