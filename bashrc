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
##-- Base16 Shell script for setting the base 16 colours correctly
BASE16_SHELL="$HOME/config_files/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
##-- alias' and exports for pretty colours! \o/
export CLICOLOR=1
export LSCOLORS=CxFxGxDxBxegedabagaced
alias ls='ls -h --color=auto'
alias ll='ls -lh --color=auto'
alias grepr='grep --color=auto --recursive'
alias grep='grep --color=auto'
alias less='less --RAW-CONTROL-CHARS'
#--- Customized prompt
export PS1="\[\e[0m\]\[\e[01;31m\][\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[01;31m\]]\[\e[0m\]\[\e[00;37m\]\\[\e[0m\]\n\[\e[00;32m\]\u\[\e[0m\]\[\e[01;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\] ->"
#--- Some apps read the EDITOR variable to determine your favorite text editor.
export EDITOR=/usr/bin/vim
#--- For forcing git to use a more useful editor than just plain vi...
export GIT_EDITOR=vim
#--- For building using MAKE we can use set it to use more than one core by default
export MAKEFLAGS="-j 8"
#--- For using stuff in a local environment
##-- Rust
export PATH="$HOME/.cargo/bin:$PATH"
##-- Racer
export CARGO_HOME="$HOME/.cargo"
export RUST_SRC_PATH="$HOME/code/rust_lang/rust/src"
##-- Go-lang
export GOPATH="$HOME/code/go_workspace"
export PATH="$GOPATH/bin:$PATH"
##-- For local programs : [ Leiningen ( for Clojure ) ]
export PATH="$HOME/bin:$PATH"
##-- Telegram bin
export PATH="$HOME/bin/Telegram:$PATH"

#--- Making sure the group has reading rights to things I upload
umask 002
