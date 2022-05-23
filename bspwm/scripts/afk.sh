#! /usr/bin/bash 
discord-canary --url -- "discord://canary.discord.com/channels/786149025098235915/847504077985808426" 
bspc desktop -f 8 &
kitty --start-as=fullscreen sh -c "tty-clock -s -c -C 4 -b" &
kitty --start-as=fullscreen sh -c "tty-clock -s -c -C 4 -b" &
sleep 0.2
bspc node -d 10 --follow & 
