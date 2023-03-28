dl () {
    file=${1##*/}
    curl -L -o $file $1 
    echo $file
}

price () {
    curl -X GET moulberry.codes/lowestbin.json -s | jq ."${1:u}"
}


cltr () {
    echo -n "Are you sure you want to clear the trash folder? (yes/no): "
    read ans 
    if [ $ans = "yes" ]; then  
        /usr/bin/rm -r $HOME/.trash/*
    fi
}

rm () {
for i in $@ 
do 
    fl=$HOME/.trash/$i
    x="1"
    while [ -f "$fl" ] 
    do  
        fl="$fl($x)"
        x=$((x+1))
    done
    mv $i $fl
done
}


_test () {
    echo -e "\e[31merror:\e[0m Not testing anything currently"
}


chjv () {
    sudo archlinux-java set java-$1-openjdk
}

.r () {
    cd /mnt/1tb-hdd/SteamLibrary/steamapps/common/Hades/Content/ >/dev/null 
    python modimporter.py
    cd - >/dev/null
}

clone () {
    cd $HOME/Documents/git-repos
    git clone $1
    cd  ${1##*/}
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


__wynnpack () { 
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


math () {
    echo $(($@))
}