wynnicon='\0icon\x1f/home/george/Documents/stuff/random-mc-stuff/wynncraft.png'
var1=' Wynncraft (Fabric 1.18.2 + Artemis)'
var2=' Wynncraft (Forge 1.12.2 + Wynntils)'
cmd () { 
    echo -en "$var1$wynnicon\n$var2$wynnicon\n" | rofi -dmenu -theme ~/.config/rofi-own/pmc.rasi 
}
chosen="$(cmd)"
echo $chosen 
case ${chosen} in
    $var1)
		prismlauncher -l "wynn-1.18"
        ;;
    $var2)
		prismlauncher -l "wynn"
        ;;
esac