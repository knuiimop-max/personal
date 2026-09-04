# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias commands for convenient
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias apt='man pacman'
alias apt-get='man pacman'

alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias fixpacman='sudo rm /var/lib/pacman/db.lck'

alias gitpkg='pacman -Q | grep -i "\\-git" | wc -l'
alias grep='grep --color=auto'

alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias hw='hwinfo --short'
alias jctl='journalctl -p 3 -xb'

alias la='eza -a --color=always --group-directories-first --icons=always'
alias ll='eza -l --color=always --group-directories-first --icons=always'
alias ls='eza --color=always --group-directories-first --icons=always'
alias lt='eza -aT --color=always --group-directories-first --icons=always'

alias mirror='sudo cachyos-rate-mirrors'

alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

alias tarnow='tar -acf'
alias tb='nc termbin.com 9999'
alias untar='tar -zxvf'

alias update='sudo cachyos-rate-mirrors && sudo pacman -Syu'

alias vdir='vdir --color=auto'
alias wget='wget -c'

# Fastfetch launch
fastfetch

# Custom shell prompt
PS1='\[\e[1;31m\]╭─\[\e[1;33m\][\[\e[1;32m\]\w\[\e[1;33m\]]\n\[\e[1;31m\]╰─\[\e[1;34m\]>\[\e[1;32m\]>\[\e[1;35m\]>\[\e[0m\] '

# Make directory and change directory
mkcd() {
    mkdir -p "$1" && cd "$1"
}
