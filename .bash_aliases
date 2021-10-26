#!/usr/bin/env bash
# enable color support of ls and also add handy aliases

export __LS_OPTIONS='--color=auto -h'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias ipsa=ip -br -c addr show
alias ipsl=ip -br -c link show
alias ip='ip -c'

alias ls='ls $__LS_OPTIONS'
alias ll='ls $__LS_OPTIONS -l'
alias la='ls $__LS_OPTIONS -la'
alias l='ls $__LS_OPTIONS -CF'
alias sl='ls $__LS_OPTIONS'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'

alias bc='bc -l'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias bc='bc -l'
alias cat="batcat"

alias mkdir='mkdir -p -v'
alias mv='mv -iv'
alias rm='rm -Iv --one-file-system --preserve-root'

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'

# gnome dpi scale customization
# this will not work in other DEs and can be commented out or deleted in those cases.
alias dpi='gsettings set org.gnome.desktop.interface text-scaling-factor'

# function checks if the application is installed
function __add_command_replace_alias() {
    if [ -x "`which $2 2>&1`" ]; then
        alias $1=$2
    fi
}

if [ -x "`which most 2>&1`" ]; then
    alias less=most
    export PAGER=most
fi

if [ -x "`which vim 2>&1`" ]; then
        export EDITOR=vim
fi

__add_command_replace_alias tail 'multitail'
__add_command_replace_alias df 'pydf'
__add_command_replace_alias traceroute 'mtr'
__add_command_replace_alias tracepath 'mtr'
__add_command_replace_alias top 'htop'

function allcolors() {
    # credit to http://askubuntu.com/a/279014
    for x in 0 1 4 5 7 8; do
        for i in `seq 30 37`; do
            for a in `seq 40 47`; do
                echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
            done
            echo
        done
    done
    echo ""
}
