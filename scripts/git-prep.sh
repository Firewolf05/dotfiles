#! /usr/bin/bash 

cfg="$HOME/.config"
dots="$HOME/dotfiles"
x=0

# configs 
rm -r $dots/bspwm && cp -r $cfg/bspwm $dots/ && echo Copied bspwm config && x=$((x+1))
rm -r $dots/dunst && cp -r $cfg/dunst $dots/ && echo Copied dunst config && x=$((x+1))
rm -r $dots/kitty && cp -r $cfg/kitty $dots/ && echo Copied kitty config && x=$((x+1))
rm -r $dots/neofetch && cp -r $cfg/neofetch $dots/ && echo Copied neofetch config && x=$((x+1))
rm -r $dots/picom && cp -r $cfg/picom $dots/ && echo Copied picom config && x=$((x+1))
rm -r $dots/polybar && cp -r $cfg/polybar $dots/ && echo Copied polybar config && x=$((x+1))
rm -r $dots/rofi-own && cp -r $cfg/rofi-own $dots/ && echo Copied rofi config && x=$((x+1))
rm -r $dots/stalonetrayrc && cp $cfg/stalonetrayrc $dots/ && echo Copied stalonetray config && x=$((x+1)) 
rm -r $dots/starship.toml && cp $cfg/starship.toml $dots/ && echo Copied starship config && x=$((x+1))

# scripts 
rm -r $dots/scripts && cp -r $HOME/scripts $dots/scripts && rm -r $dots/scripts/wip && echo Copied scripts && x=$((x+1))

# zsh 
rm -r $dots/zsh/* && cp -r $cfg/zsh/aliases.zsh $cfg/zsh/functions.zsh $cfg/zsh/theme.zsh $cfg/zsh/zshrc $dots/zsh && echo Copied zsh config && x=$((x+1))

echo
if [ $x == 11 ]; then
    echo Copied everything successfully 
else 
    echo Something failed 
fi

echo "git add ."
echo "git commit -m <commit name>"
echo "git push -u origin main"
cd $dots 
$SHELL 
