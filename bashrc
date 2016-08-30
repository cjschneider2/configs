# .bashrc
###############################################################################
# Bash initialization
#
# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
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
alias grepr='grep -I -n --color=auto --recursive'
alias grep='grep --color=auto'
alias less='less --RAW-CONTROL-CHARS'
export CLICOLOR=1

# This is the custom status line...
export PS1="\[\e[0m\]\[\e[01;31m\][\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[01;31m\]]\[\e[0m\]\[\e[00;37m\]\\[\e[0m\]\n\[\e[00;32m\]\u\[\e[0m\]\[\e[01;37m\] @ \[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\] -> "
#--- Some apps read the EDITOR variable to determine your favorite text editor.
export EDITOR=/usr/bin/vim
#--- For forcing git to use a more useful editor than just plain vi...
export GIT_EDITOR=vim
#--- Setting vi mode in the shell
##-- Bash
set -o vi
##-- zsh
# bindkey -v
##-- ~/.inputrc for readline
set editing-mode vi
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
#export PATH=$PATH:/opt/telegram
export PATH="$HOME/bin/Telegram:$PATH"
# For fixing atom's routing through the proxy @ Work
# (set the proxy in atom with: `apm config set http(s)-proxy http(s)://<IP>:<PORT>` )
# The following is apparently depreciated
#export ATOM_NODE_URL=http://gh-contractor-zcbenz.s3.amazonaws.com/atom-shell/dist
# and this should be used instead
export ATOM_ELECTRON_URL=http://gh-contractor-zcbenz.s3.amazonaws.com/atom-shell/dist

#--- For AdhoC++
#export FC=/usr/bin/gfortran
# ITK compiled libraries (I think this is correct....)
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/linux/src/ITK/build/lib
# For opencascade includes
#export ADHOCPP_OCC_INCLUDE_DIR=opt/opencascade/inc
# For opencascade libs
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:opt/opencascade/lib
##-- For AdhoC
# Intel MKL Scripts (This may not be totally necessary TBH)
#export I_ARCH=intel64
#export MKL_INSTALL_DIR=/opt/intel
#export MKLPATH=/opt/intel/mkl/lib/intel64
##$MKL_INSTALL_DIR/bin/compilervars.sh $I_ARCH
#export MKLINCLUDE=/opt/intel/mkl/include
#export ATLAS_PATH=/usr/lib/
#export PVM_ROOT=/home/jerry/Code/Linux/pvm3
# Things for compiler
#export OMP_NUM_THREADS=4
#export UNAME=Linux
#export PATH=$PATH:$HOME/$UNAME/bin
#export SPOOLES_PATH=/home/jerry/Code/Linux/spooles
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/$UNAME/lib:$MKLPATH
#export ADHOC=/home/jerry/Code/AdhoC/src

#--- Making sure the group has reading rights to things I upload
umask 002
