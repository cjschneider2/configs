# .bashrc
###############################################################################
# Bash initialization
#
# LOGIN:
# /etc/profile
#   /etc/profile.env (if exists)
#   /etc/bash/bashrc (if exists)
#   /etc/profile.d/*.sh (if exists)
#
# ~/.bash_profile
#   /etc/bashrc
#   ~/.bashrc (if exists)
# if( ~/.bash_profile doesn't exist)
#   ~/.bash_login
# if( ~/.bash_profile doesn't exist)
#   ~/.bash_login
#
# NON-LOGIN
# /etc/bash/bashrc
# ~/.bashrc
###############################################################################
#--- Enable color support for things
##-- pretty colors for prompt.
export PS1="\[\e[00;32m\]\u\[\e[0m\]\[\e[01;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;31m\][\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[01;31m\]]\[\e[0m\]\[\e[00;37m\]\$\[\e[0m\]"
##-- alias' and exports for pretty colours! \o/
export CLICOLOR=1
export LSCOLORS=CxFxGxDxBxegedabagaced
alias ls='ls -h --color=auto'
alias ll='ls -lh --color=auto'
alias grepr='grep --color=auto --recursive'
alias grep='grep --color=auto'
alias less='less --RAW-CONTROL-CHARS'
#--- Some apps read the EDITOR variable to determine your favorite text editor.
export EDITOR=/usr/bin/vim
#--- For forcing git to use a more useful editor than just plain vi...
export GIT_EDITOR=vim
