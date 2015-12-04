#!/bin/bash

set -u # undefined variables are errors

main () {
    assert_cmds
    set_globals
    handle_command_line_args "$@"
}

handle_command_line_args () {
    if [$# -eq 0]
    then
        help
    fi

    # commands
    local _install=false
    local _update=false
    local _backup=false
    # options
    local _install_dir=""

    while getopts :help install update backup install_dir: FLAG; do
        case $FLAG in
            help)
                help
                ;;
            install)
                install=true
                ;;
            update)
                _update=true
                ;;
            backup)
                _backup=true
                ;;
            install_dir)
                _install_dir=$OPTARG
                ;;
            \:) # option value not entered
                ;;
            \?) # unrecognized option
                help
                ;;
        esac
    done
}

help () {
    cat <<EOF
This script can install, update, and backup the following configuration files:
    ~/.bashrc
    ~/.screenrc
    ~/.vim/
    ~/.vimrc
Three commands are available:
    --install
    --update
    --backup
There are a few optional commands to customize where
EOF
}

set_globals () {
    assert_nz "$HOME" "\$HOME is undefined"
    assert_nz "$0" "\$0 is undefined"
    # Setup default directories
    CONFIG_DIR="$HOME/configs"
    INSTALL_DIR="$HOME"
}

install_pref_files () {
    echo "Installing preferences for:"
    echo "   ~/.bashrc"
    ln -s $CONFIG_DIR/bashrc $INSTALL_DIR/.bashrc
    echo "   ~/.screenrc"
    ln -s $CONFIG_DIR/vimrc $INSTALL_DIR/.vimrc
    echo "   ~/.vimrc"
    ln -s $CONFIG_DIR/screenrc $INSTALL_DIR/.screenrc
}

install_vim_plugins () {
    echo "Installing vim plugins:"
    echo "  |- Pathogen plugin"
    curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
    echo "  |- vim-Airline"
    git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
    echo "  |- colour-sample-pack"
    git clone git://github.com/vim-scripts/Colour-Sampler-Pack.git ~/.vim/bundle/colour-sampler-pack
    echo "  |- NeoComplete"
    git clone git://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete.vim
    echo "  |- nerdtree"
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
    echo "  |- rust.vim"
    git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
    echo "  \`- supertab"
    git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
}

update_vim_plugins () {
    echo "updating vim plugins:"
#    echo "  |- Pathogen plugin"
#    curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
    echo "  |- vim-Airline"
    cd ~/.vim/bundle/vim-airline && git pull
    echo "  |- colour-sample-pack"
    cd ~/.vim/bundle/colour-sampler-pack && git pull
    echo "  |- NeoComplete"
    cd ~/.vim/bundle/neocomplete.vim && git pull
    echo "  |- nerdtree"
    cd ~/.vim/bundle/nerdtree && git pull
    echo "  |- rust.vim"
    cd ~/.vim/bundle/rust.vim && git pull
    echo "  \`- supertab"
    cd ~/.vim/bundle/supertab && git pull
}

assert_cmds () {
    need_cmd curl
}

main "$@"
