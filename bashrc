#           ____       _     __     __  _____   _   ____   
#          |  _ \     / \    \ \   / / | ____| ( ) / ___|  
#          | | | |   / _ \    \ \ / /  |  _|   |/  \___ \  
#          | |_| |  / ___ \    \ V /   | |___       ___) | 
#          |____/  /_/   \_\    \_/    |_____|     |____/  
#           ____       _      ____       _      ____    ____   
#          | __ )     / \    |  _ \     / \    / ___|  / ___|  
#          |  _ \    / _ \   | | | |   / _ \   \___ \  \___ \  
#          | |_) |  / ___ \  | |_| |  / ___ \   ___) |  ___) | 
#          |____/  /_/   \_\ |____/  /_/   \_\ |____/  |____/  
#           ____       _      ____    _   _   ____     ____  
#          | __ )     / \    / ___|  | | | | |  _ \   / ___| 
#          |  _ \    / _ \   \___ \  | |_| | | |_) | | |     
#          | |_) |  / ___ \   ___) | |  _  | |  _ <  | |___  
#          |____/  /_/   \_\ |____/  |_| |_| |_| \_\  \____| 




# Link this file to ~/.bashrc !!!

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export
export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'
export PATH="/home/dave/bin:/home/dave/.local/bin:$PATH"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Android Studio bullshit
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#Java home
export JAVA_HOME='usr/bin/java'
#Prompt
# The \[ & ]\ are just to cover the options. You can do without it, but it will mess up the terminal from time to time
# The $(tput bold) command at the beginning will make everything bold
# The $(tput setaf 46) will make everything that color (46)
# type colors in the terminal to find out what numbers stand for what colors
#PS1='\[$(tput setaf 9)\] \W$ \[$(tput setaf 39)\] \[$(tput bold)\]'
PS1='\W$ '

# Powerline 
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh

# Temp Aliases
alias addict='cd ~/addict/react-advanced-2020/'

# React Native Commands
alias rnstart='npx react-native start'
alias rnandroid='npx react-native run-android'
alias link='npx react-native link'

# Intellij
alias intel='/opt/intellij/bin/idea.sh "$1" > /dev/null 2>&1 &'
#Aliases
alias showdns='cat /etc/resolv.conf'
alias react='cd ~/Dump/react-typescript-projects-2021'
alias react1='cd ~/Documents/react-projects-setups'
alias pacmansyu='sudo pacman -Syu --noconfirm && updatepkglist && reboot'
alias rmd='rm -rf'
alias updatepkglist='pacman -Qqetn > ~/.config/dotfiles/pkglist.txt'
alias ping='ping -c 5 1.1.1.1 && ping -c 5 8.8.8.8'
alias vim='nvim'
alias bashrc='nvim ~/.config/dotfiles/bashrc'
alias vimrc='nvim /home/dave/.config/nvim/lua/user'
alias whoami='cowsay You are a hugeee butthole!!'
alias edit='nvim -u ~/.config/dotfiles/vim/story.vim'
alias gui='startxfce4 && exit'
alias up='cd ..'
alias cat='bat'
alias ls='lsd -lh --icon=never'
alias less='less -r'
alias colors='for C in {0..255}; do tput setab $C; echo -n "$C "; done; tput sgr0; echo'
alias refresh='sudo protonvpn c --cc US && ip a'
alias shut='sudo protonvpn d'
alias copy='xclip -i -selection clipboard <<<'
alias copyp='xclip -i -selection primary <<<'
alias copys='xclip -i -selection secondary <<<'
alias paste='xclip -o -selection clipboard'
alias pastep='xclip -o -selection primary'
alias pastes='xclip -o -selection secondary'
alias teamon='sudo systemctl start teamviewerd'
alias teamoff='sudo systemctl stop teamviewerd'
alias grep='grep --color'
alias ip='ip -color=auto'
alias ssh='kitty +kitten ssh' #for some reason kitty misbehaves when ssh-ing, the developer provided this shortcut but idk what's going on
alias show='systemctl status'
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias screen='screenfetch -p'
alias phone='cat /home/dave/.personal/raw/address.book | grep -i'
alias pgp='gpg'
alias nani='nano'
alias tac='cat'
alias battery='sudo tlp-stat | grep Charge | head -1'
alias glog='git log --graph --oneline --all'
alias wifishow='nmcli device wifi list'
alias wifi='nmcli | head -1'
alias py='python'
alias pip='pip3'
#alias mocha='./node_modules/mocha/bin/mocha'
alias open='xdg-open'
alias dull='redshift -P -O 4200'
alias bright='redshift -P -O 6500'
alias attach='tmux attach -t'
alias tls='tmux list-sessions'
alias tkill='tmux kill-session -t'
alias tmuxrc='nvim ~/.config/dotfiles/tmux'
alias tmux='tmux -2'
alias tclear='tmux kill-session -a'
alias dotfiles='clear && cd ~/.config/dotfiles/ && ls'
alias vimm='vim -u ~/.config/nvim/backup_init.vim'
alias luacon='clear && cd ~/.config/nvim/lua/user && ls'
alias ipa='ip address'
alias logout='xfce4-session-logout --logout'
alias two='nmcli con up awisheklamshal_2.4'
alias xx='xmodmap ~/.Xmodmap'
alias xxx='xmodmap ~/.kenken'
alias rn='npx react-native'
alias unneeded='sudo pacman -Rns `pacman -Qdtq`'
alias tube='ytfzf -tf'
alias tsn='ts-node'
alias alpha='printf "A|B|C|D|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|Y\nY|R|S|T|V|K|P|U|B|N|C|Q|G|I|D|F|L|M|H|A|J|O\n"'
#Functions that can be called from the terminal

# Calulate shit
calc(){
    bc <<< "scale=10; $1"
}

# Connect to a wifi
connect(){
    if [ $# -eq 1 ]; then
        nmcli con up $1
    else
        nmcli device wifi connect $1 password $2
    fi
}

# Disable ipv5
disable6(){
    sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
    sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
}

# Enable ipv5
enable6(){
    sudo sysctl -w net.ipv6.conf.all.disable_ipv6=0
    sudo sysctl -w net.ipv6.conf.default.disable_ipv6=0
}
# Launch Blueman
bluemanon(){
	sudo systemctl start bluetooth.service
	sudo bluetooth on
	blueman-manager
}

bluemanoff(){
	sudo bluetooth off
	sudo systemctl stop bluetooth.service
}

dnschange(){
	sudo echo 'nameserver 1.1.1.1' > /etc/resolv.conf
}

vitals(){
	d=`date +%x`
	printf "$d\t$1\t$2\n" >> ~/.vitals
}

# Create node repl with desired functions pre defined
node(){
    if [ $# -eq 0 ]; then
        /usr/bin/node ~/.config/dotfiles/noderc.js
    else
        /usr/bin/node $1
    fi
}

# Empty Clipboard(s)
empty(){
    if [ $# -eq 0 ]; then
    xclip -i -selection clipboard /dev/null
else
    xclip -i -selection $1 /dev/null
    fi

}

# Get SHA256 hash of a string repeatedly n number of times, where n in the lenght of the string 
# for example:
# hash apple => 749fa8370006c2e2ede52a420f8e0992ed345eb1a987c0125bd9cc6cb5f865e1
# because:
# sha256 of apple = 3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b  -
# sha256 of 3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b = ef884a460da0e7731fdbf2a097e21cda370403545360a365ecc9e38b2c387ab6  -
# sha256 of ef884a460da0e7731fdbf2a097e21cda370403545360a365ecc9e38b2c387ab6 = 9f640eef62fc92ef97301f817153e848e3c4e349a30fe8ad6d6dfcca563f6e1d  -
# sha256 of 9f640eef62fc92ef97301f817153e848e3c4e349a30fe8ad6d6dfcca563f6e1d = da7086e0efc230bbfca608b4c6c2c1bcfb2242a52bff9e213c635e15f321a7c4  -
# And finally:
# sha256 of da7086e0efc230bbfca608b4c6c2c1bcfb2242a52bff9e213c635e15f321a7c4 = 749fa8370006c2e2ede52a420f8e0992ed345eb1a987c0125bd9cc6cb5f865e1  -

hash(){
    length=$(echo -n $1 | awk '{print length}')

    sha(){
        str=$1
        num=$2
        if [ "$num" -eq 0 ]; then
            echo $str
        else
            str=$(echo -n $str | sha256sum | awk '{print $1}')
            ((num=num-1))
            sha $str $num
        fi
    }

sha $1 $length
}

hush(){
    sha(){
        str=$1
        num=$2
        if [ "$num" -eq 0 ]; then
            echo $str
        else
            str=$(echo -n $str | sha256sum | awk '{print $1}')
            ((num=num-1))
            sha $str $num
        fi
    }

sha $1 $2
}


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
