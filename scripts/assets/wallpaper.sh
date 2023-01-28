icon='\0icon\x1f/home/george/scripts/assets/variety.svg'
var1=' Select wallpaper'
var2=' See wallpaper history'
var3=' Clear wallpaper history'
cmd () { 
    echo -en "$var1$icon\n$var2$icon\n$var3$icon\n" | rofi -dmenu -theme ~/.config/rofi-own/pmc.rasi 
}
chosen="$(cmd)"
echo $chosen 
case ${chosen} in
    $var1)
		kitty sh -c "wallpaper-set select" 
        ;;
    $var2)
		kitty sh -c "wallpaper-set history" 
        ;;
    $var3)
        wallpaper-set clr-history
        ;;
esac