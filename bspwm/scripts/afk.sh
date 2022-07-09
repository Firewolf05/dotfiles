#!/usr/bin/bash 
if [[ ! -f /tmp/afk-lock  ]]; then 
    bspc monitor -f HDMI-A-0
    bspc query -D -d focused --names >/tmp/afk-lock 
    bspc monitor -f HDMI-A-1
    bspc query -D -d focused --names >/tmp/afk-lock-2
    kitty --class=afk-1 --start-as=fullscreen sh -c "tty-clock -s -c -C 4 -b" &
    kitty --class=afk-2 --start-as=fullscreen sh -c "cbonsai -l -i" &
else 
    pkill tty-clock
    pkill cbonsai 
    bspc desktop -f $(cat /tmp/afk-lock)
    bspc desktop -f $(cat /tmp/afk-lock-2)
    del /tmp/afk-lock
    del /tmp/afk-lock-2
fi 

