# system 
alias apt='sudo apt-get install'
alias remove='sudo apt-get remove'
alias search='apt-cache search'
alias shutdown='sudo shutdown -h now'
alias ..='cd ..'

# network
alias snet='sudo dhclient -r'
alias tnet='ping -c 3 www.google.com'

# package manager
alias update='sudo apt-get update'

# development
alias spec='spec -color --format nested'

# gemdir 
PATH="/var/lib/gems/1.8/bin:${PATH}"
export PATH

export VIMHOME="~/.vim"

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# prompt
#PS1="[\W @ \u]: "
PS1="\[\033[31m\][\d]\[\033[32m\][\t]\[\033[35m\][\w]\n-> \[\033[0m\]"
export PS1
