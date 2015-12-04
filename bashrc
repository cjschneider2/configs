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

# pretty colors for prompt.
export PS1="\[\e[00;32m\]\u\[\e[0m\]\[\e[01;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;31m\][\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[01;31m\]]\[\e[0m\]\[\e[00;37m\]\$\[\e[0m\]"
#Enable color support for things
#alias ls='ls --color=auto'
export CLICOLOR=1
export LSCOLORS=CxFxGxDxBxegedabagaced
