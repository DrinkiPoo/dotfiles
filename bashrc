# Link this file to ~/.bashrc !!!


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export
#yet they don't work. Help!!
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export PATH="/home/dave/bin:$PATH"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Android Studio bullshit
export ANDROID_HOME="/opt/android"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"

#Prompt
# The \[ & ]\ are just to cover the options. You can do without it, but it will mess up the terminal from time to time
# The $(tput bold) command at the beginning will make everything bold
# The $(tput setaf 46) will make everything that color (46)
# type colors in the terminal to find out what numbers stand for what colors
#PS1='\[$(tput setaf 9)\] \W$ \[$(tput setaf 39)\] \[$(tput bold)\]'
PS1='\W$ '


#Aliases
alias vim='nvim'
alias bashrc='nvim ~/.config/dotfiles/bashrc'
alias vimrc='nvim ~/.config/dotfiles/vim/plug-config/'
alias whoami='cowsay You are a hugeee butthole!!'
alias edit='nvim -u ~/.config/dotfiles/vim/story.vim'
alias gui='startxfce4'
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
alias vmusb='sudo systemctl start vmware-usbarbitrator.service'
alias vmusboff='sudo systemctl stop vmware-usbarbitrator.service'
alias ssh='kitty +kitten ssh' #for some reason kitty misbehaves when ssh-ing, the developer provided this shortcut but idk what's going on
alias show='systemctl status'
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias screen='screenfetch -p'
alias phone='cat /home/dave/.personal/address.book | grep -i'
alias pgp='gpg'
alias nani='nano'
alias tac='cat'
alias battery='sudo tlp-stat | grep Charge | head -1'
alias glog='git log --graph --oneline --all'
alias wifishow='nmcli device wifi list'
alias py='python'
alias pip='pip3'
#alias mocha='./node_modules/mocha/bin/mocha'
alias open='xdg-open'
alias dull='redshift -P -O 4200'
alias bright='redshift -P -O 6500'
alias attach='tmux attach -t'
alias tls='tmux list-sessions'
alias tkill='tmux kill-session -t'
alias tmuxrc='nvim ~/.config/dotfiles/.tmux.conf'
alias tmux='tmux -2'
alias tkillall='tmux kill-session -a'

#Functions that can be called from the terminal

#It's a FCC thing. Basically starts a new .js file with the words of the title connected with hypend. Also chmod +x

valerie(){
	args=("$@")
	x=$1
	ELEMENTS=${#args[@]}

	for (( i=1;i<$ELEMENTS;i++)); do
	    x="${x}-${args[${i}]}"
	done
	printf "/*\n\n*/\n\n\nconsole.log(\n\n);" > "$x.js"
	chmod +x "$x.js"
	vim "$x.js"
}


# Connect to a wifi

connect(){
	nmcli device wifi connect $1 password $2
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

# Empty Clipboard(s)
empty(){
    if [ $# -eq 0 ]; then
    xclip -i -selection clipboard /dev/null
else
    xclip -i -selection $1 /dev/null
    fi

}
