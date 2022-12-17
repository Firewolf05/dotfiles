#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="rounded"

dir="$HOME/.config/rofi/"
rofi_command="rofi -theme $dir/powermenu.rasi"

uptime=$(uptime -p | sed -e 's/up //g')
cpu=$($HOME/.config/rofi/scripts/usedcpu)
memory=$($HOME/.config/rofi/scripts/usedram)

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $HOME/.config/rofi-new/confirm.rasi
}


# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "祥  $uptime  |     $cpu  |  ﬙  $memory " -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		systemctl poweroff 
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
		betterlockscreen -l
        ;;
    $suspend)
		mpc -q pause
		amixer set Master mute
		systemctl suspend
        ;;
    $logout)
		bspc quit
        ;;
esac
