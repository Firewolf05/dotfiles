#! /usr/bin/bash 
discord-canary --url -- "discord://canary.discord.com/channels/786149025098235915/847504077985808426" 
kitty --class=afk1 --start-as=fullscreen sh -c "tty-clock -s -c -C 4 -b" &
kitty --class=afk2 --start-as=fullscreen sh -c "cbonsai -l -i" &
bspc node -f 10 & 
bspc desktop -f 8 &
playerctl pause 
notify-send Bspwm Afk -t 3000 --icon=/home/george/.config/bspwm/cat.png