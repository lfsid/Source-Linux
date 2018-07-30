#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\033[1;36m\][\[\033[0;31m\]\u\[\033[1;36m\]-\[\033[0;36m\]\h\[\033[1;36m\]]\[\033[0;31m\]\W\[\033[0;36m\] \$\[\033[0;31m\]:\[\033[1;00m\] '


[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

