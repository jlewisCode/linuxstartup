export PATH=$PATH:~/bin
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

alias wp='webpack-dev-server --inline --hot'

alias drmi='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias drmae='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'





# BEEHIVE   
#================================================================
alias beehive='cd ~/projects/beehive/'

# KANBAN   
#================================================================
alias kanban='cd ~/projects/kanban/src'


# WHISTLE   
#================================================================
alias whistle='cd ~/projects/whistle-frontend/src'

# GULP
#==========================================================
alias gw='gulp watch'
alias gwf='gulp watch --force'
alias gb='gulp build'


alias dc='docker-compose'

# General 
#================================================================
# Quick route to edit etc/hosts
alias etchosts='sudo vim /etc/hosts'

alias myprojects='cd ~/projects'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the ls output ##
alias ls='ls --color=auto'
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'


# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Path Commands
alias path='echo -e ${PATH//:/\\n}' 

# install  colordiff package :)
alias diff='colordiff'


alias mkdir='mkdir -pv'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# Elastic Search
alias elasticreboot='sudo service elasticsearch restart'

# Browsers

PROJECT_HOME="$HOME/projects"
alias mkvirtualenv3="mkvirtualenv --python=/usr/bin/python3"
alias mkproject3="mkproject --python=/usr/bin/python3"

export NVM_DIR="/home/jlewis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function parse_git_branch () {
 git branch 2> /dev/null | sed -e '/^[^​*]/d' -e 's/*​ \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
