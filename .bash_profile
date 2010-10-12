# system 
alias apt='sudo apt-get install'
alias remove='sudo apt-get remove'
alias search='apt-cache search'
alias shutdown='sudo shutdown -h now'

# network
alias snet='sudo dhclient -r'
alias tnet='ping -c 3 www.google.com'

# package manager
alias update='sudo apt-get update'

# git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'

# development
alias spec='spec -color --format nested'

# gemdir 
PATH="/var/lib/gems/1.8/bin:${PATH}"
export PATH

export VIMHOME="~/.vim"

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
