#! /usr/bin/bash 

cfg="$HOME/.config"
dots="$HOME/dotfiles"
x=0
# configs 
cp -r $cfg/bspwm $dots/bspwm && echo Copied bspwm config && x=$((x+1))
cp -r $cfg/dunst $dots/dunst && echo Copied dunst config && x=$((x+1))
cp -r $cfg/kitty $dots/kitty && echo Copied kitty config && x=$((x+1))
cp -r $cfg/neofetch $dots/neofetch && echo Copied neofetch config && x=$((x+1))
cp -r $cfg/picom $dots/picom && echo Copied picom config && x=$((x+1))
cp -r $cfg/polybar $dots/polybar && echo Copied polybar config && x=$((x+1))
cp -r $cfg/rofi-own $dots/rofi-own && echo Copied rofi config && x=$((x+1))
cp $cfg/stalonetrayrc $dots/stalonetrayrc && echo Copied stalonetray config && x=$((x+1)) 
cp $cfg/starship.toml $dots/starship.toml && echo Copied starship config && x=$((x+1))

# scripts 
cp -r $HOME/scripts $dots/scripts && echo Copied scripts && x=$((x+1))

# zsh 
cp -r $cfg/zsh/aliases.zsh $cfg/zsh/functions.zsh $cfg/zsh/theme.zsh $cfg/zsh/zshrc $dots/zsh && echo Copied zsh config && x=$((x+1))

echo
if [ $x == 11 ]; then
    echo Copied everything successfully 
else 
    echo Something failed 
fi
