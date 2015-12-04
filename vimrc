" Use Vim defaults
set nocompatible

" RUST commands
filetype plugin indent on
let g:no_rust_conceal = 1


" Fixing tabs width to 4 space tabs.
set tabstop=4
set shiftwidth=4
set expandtab

" Set Line-Numbering on by default
set number


" Spell Checking
:setlocal spell spelllang=en_us


" Use the scroll wheel
set mouse=a
set mousehide " hide mouse while typing

" Use with pathogen
execute pathogen#infect()
call pathogen#helptags()
set laststatus=2 " use with vim-airline
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on


"====[ Make the 81st column stand out ]====================

" EITHER the entire 81st column, full-screen...
"highlight ColorColumn ctermbg=magenta
"set colorcolumn=81

" OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list


" Fixing color schemes
colorscheme vibrantink
syntax on
