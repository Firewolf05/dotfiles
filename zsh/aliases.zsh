alias ls='exa --color=always --group-directories-first --icons'
alias lsa='exa -la --color=always --group-directories-first --icons'
alias la='exa -a --color=always --group-directories-first --icons'
alias ll='exa -l --color=always --group-directories-first --icons'
alias lt='exa -aT --color=always --group-directories-first --icons'
alias l.="exa --all --icons" 
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../' 
alias nano='nano -c -g -m'
alias hi='figlet HELLO!!! | lolcat'
alias ytmusic-dl='youtube-dl -f mp4 -x --audio-format mp3'
alias neofetch_3='neofetch --config $HOME/.config/neofetch/config3.conf'
alias neofetch='neofetch --config $HOME/.config/neofetch/config.conf'
alias neofetch_2='neofetch --config $HOME/.config/neofetch/config2.conf'
alias neofetch_1='neofetch --config $HOME/.config/neofetch/config1.conf'
alias winfetch='neofetch --config $HOME/.config/neofetch/winfetch.conf'
alias pls='sudo'
alias matrix='neo-matrix -D'
alias S='paru -S'
alias Ss='pacman -Ss'
alias Si='pacman -Si'
alias R='paru -Rns'
alias Syu='sudo pacman -Syu'
alias Qs='paru -Qs'
alias Qi='paru -Qi'
alias ySi='paru -Si'
alias ySs='paru -Ss'
alias yay='paru'
alias getgit='git config --get remote.origin.url'
alias clock='tty-clock -s -c -C 4 -b'
alias orphans='pacman -Qdtq && sudo pacman -Rs $(pacman -Qdtq)'
alias conf='cd $HOME/.config'
alias gitrepos='cd $HOME/Documents/git-repos'
alias .h='cd /mnt/1tb-hdd/SteamLibrary/steamapps/common/Hades/'
alias audio='pavucontrol'
alias thunar='thunar &!'
alias c='code'
alias grep='grep --color=always'
alias y='echo ":clown:"'
alias tr='ls ~/.trash'
alias trr='ranger ~/trash' 
alias cdz='cd $ZSH'
alias packages='pacman -Qq > ~/packagelist.txt'
alias space='duf'
alias led='g512-led'
alias rr='ranger'
alias py='python'
alias pgrep='pgrep -l'
