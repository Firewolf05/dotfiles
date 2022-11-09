price () {
    curl -X GET moulberry.codes/lowestbin.json -s | jq ."${1:u}"
}

__unzip () {
    if [[ $1 == "-help" ]] then 
        echo -e "\e[31m ===> \e[32munzip\e[0m [source] [target directory]"
    else   
        if [[ ! -f "$1" ]]; then 
            echo "File \e[31m$1\e[0m does not exist, exiting" 
            exit 
        fi
        if [ -n "$2" ]; then 
            dir=$2
            check="1"
        else 
            dir=$(echo "${1%.*}")
            check="2"
        fi
        if [[ -d "$(pwd)/$dir" ]] then 
            if [[ -d "$(pwd)/$dir-2" ]] then
                echo -e "\e[31merror:\e[0m folder already exists (2), could \e[31mnot\e[0m extract"
                exit 1
            fi
            mkdir $dir-2
            cd $dir-2
            if [ $check = "1" ]; then 
                echo -e "Directory already exists, extracted into \e[32m$dir-2 \e[0minstead"
            else 
                echo -e "No directory given, extracting into \e[32m$dir\e[0m"
                echo -e "Directory already exists, extracted into \e[32m$dir-2 \e[0minstead"
            fi
        else
            mkdir $dir
            cd $dir
            if [ $check = "1" ]; then 
                echo -e "Successfully extracted into \e[32m$dir\e[0m"
            else 
                echo -e "No directory given, extracted into \e[32m$dir\e[0m"
            fi
        fi
        bsdtar xvf ../$1
        cd - >/dev/null
    fi 
}


rm () {
    if [[ -d "$HOME/.trash/$1" ]] then 
        mv $@ ~/.trash/$1-2
    else 
        mv $@ ~/.trash/
    fi
}

cltr () {
    sudo rmd 
    mkdir ~/.trash
}

_s () {
    if [[ $(pwd) == $HOME/.config/spicetify ]]
    then 
        if [[ $1 == "c" ]]
        then 
            if [[ $2 == "ct" ]]
            then 
                spicetify config current_theme $3
            elif [[ $2 == "cs" ]]
            then
                spicetify config color_scheme $3
            fi
        elif [[ $1 == a ]]
        then 
            spicetify apply
        else 
            spicetify $@
        fi
    else 
        cd ~/.config/spicetify
    fi 
}

_test () {
    echo -e "\e[31merror:\e[0m Not testing anything currently"
}


chjv () {
    sudo archlinux-java set java-$1-openjdk
}

fix-att () {
    sudo rm /usr/share/applications/archlinux-tweak-tool.desktop 
    sudo cp ~/.config/archlinux-tweak-tool/archlinux-tweak-tool.desktop /usr/share/applications/archlinux-tweak-tool.desktop
}   

.r () {
    cd /mnt/1tb-hdd/SteamLibrary/steamapps/common/Hades/Content/ >/dev/null 
    python modimporter.py
    cd - >/dev/null
}

clone () {
    cd $HOME/Documents/git-repos
    git clone $@ 
}


function drag () {
    dragon-drop -x $@
}

function picoms () {
    pkill picom 
    if [[ $1 == "anim" ]] then 
        picom-animations --config ~/.config/picom/config.conf --experimental-backends &!
        echo "picom-animations" > ~/.picomlockfile
    elif [[ $1 == "norm" ]] then 
        picom --config ~/.config/picom/config.conf --experimental-backends &!
         echo "picom" > ~/.picomlockfile
    fi
}

function neovim () {
    kitty sh -c "nvim $@"
}

setwall () {
    variety --set=$(pwd)/$@
}


#alias z='echo -e "\e[32m...Reloaded\e[0m" && zsh'
alias z='_reload'
 _reload () {
    source $zsh/zshrc
    echo -e "\e[32m...Reloaded\e[0m"
}

gitclone () { 
    git clone https://github.com/$@
}

up () { 
    echo " "
    echo -e "\e[35m:: \e[0mLooking for \e[96mpacman/AUR \e[0mupdates"
    echo " "
    yay
    echo " "
    echo "-------------------------------------------------------------"
    echo " "
#    echo -e "\e[35m:: \e[0mLooking for \e[96mFlatpak \e[0mupdates"
#    echo " "
#    flatpak update 
#    echo " "
#    echo "-------------------------------------------------------------"
#    echo " "
    echo -e "\e[35m:: \e[0mLooking for \e[96mArtemis \e[0mupdates"
    echo " "
    artemis
    echo " "
    echo "-------------------------------------------------------------"
    echo " "
}

trolling () {
    del /home/george/polymc/instances/wynn-1.18/.minecraft/mods/wynntils-1.1.0+367.MC1.18.2-fabric.jar
    cp $HOME/Documents/stuff/random-mc-stuff/wynntils/wynntils-1.1.0+327.MC1.18.2-fabric.jar /home/george/polymc/instances/wynn-1.18/.minecraft/mods
}

wynnpack () { 
    mkdir /tmp/wynnpack 
    cp $1 /tmp/wynnpack/$1 
    dir=$(pwd)
    cd /tmp/wynnpack 
    jar -xf $1
    del $1
    d=$(date '+%d-%m')
    df=$(date '+%a %b %d %H:%M')
    echo '{"pack":{"pack_format":8,"description":"§7WynnResourcePack - 2.0\n§a(1.18, '$df')"}}' > pack.mcmeta
    zip -r WynnPack-$d.zip assets/ pack.mcmeta pack.png 
    mv WynnPack-$d.zip $dir/
    cd $dir 
    del -r /tmp/wynnpack
}