#!/bin/bash

echo "Installing preferences for:"
echo "                           ~/.bashrc"
echo "                           ~/.screenrc"
echo "                           ~/.vimrc"
ln -s ~/default-settings-terminal-programs/.bashrc ~/.bashrc
ln -s ~/default-settings-terminal-programs/.vimrc ~/.vimrc
ln -s ~/default-settings-terminal-programs/.screenrc ~/.screenrc


echo "Installing vim plugins:"
echo "  |- Pathogen plugin"
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo "  |- vim-Airline"
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
echo "  |- rust-lang syntax highlighting"
git clone git://github.com/wting/rust.vim.git ~/.vim/bundle/vim-rust
echo "  |- colour-sample-pack"
git clone git://github.com/vim-scripts/Colour-Sampler-Pack.git ~/.vim/bundle/colour-sampler-pack
echo "  |- NeoComplete"
git clone git://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete.vim
echo "  |- nerdtree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
echo "  |- rust.vim"
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
echo "  |- supertab"
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
