# Terminal
export TERM=xterm-256color
export PS1='\[\e[1;31m\]`date` \[\e[1;36m\]\u\[\e[0;32m\]@\[\e[1;37m\]\h:\[\e[1;35m\]\w\[\e[1;33m\] \n \$\[\e[m\] '
eval `dircolors ~/.colorrc`
alias ls='ls --color=auto'

# Neovim
export XDG_CONFIG_HOME=$HOME/.config

# xserver
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
export LIBGL_ALWAYS_INDIRECT=1

# my enviroment variables
export WS=~/Workspace

# JetBrain IDE
alias idea="${WS}/src/idea-IU-202.7660.26/bin/idea.sh & > /dev/null"
alias phpstorm="${WS}/src/PhpStorm-202.7660.42/bin/phpstorm.sh & > /dev/null"
alias webstorm="${WS}/src/WebStorm-202.7660.23/bin/webstrom.sh & > /dev/null"

# Maven

# Zeppelin
alias zeppelin-start="PWD=`pwd` && cd $WS/docker/compose/zeppelin && docker-compose up   -d ; cd $PWD"
alias  zeppelin-stop="PWD=`pwd` && cd $WS/docker/compose/zeppelin && docker-compose down    ; cd $PWD"

# Tmux
source ~/.bash_profile-tmux
