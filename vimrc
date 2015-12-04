"--- LAST EDIT : (ISO) 2015-12-04

"--- Use Vim defaults
set nocompatible
"--- Fixing tabs width to 4 space tabs.
set tabstop=4
set shiftwidth=4
set expandtab
"--- Set Line-Numbering on by default
set number
"--- Spell Checking
:setlocal spell spelllang=en_us
":setlocal spell spelllang=de_de
"--- Use the scroll wheel
set mouse=a
set mousehide " hide mouse while typing
"--- Key remaps for searching and then centering
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz
"--- Use with pathogen
execute pathogen#infect()
call pathogen#helptags()
set laststatus=2 " use with vim-airline
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
"--- Manual loading things after Pathogen
""-- Gitgutter
"""- These two are because gitgutter needs help with it's shell script :|
"let g:gitgutter_realtime = 0
"set shell=/usr/bin/bash
""-- Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatusLineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 1 " ... 3 is also a decent number of lines
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"""- Syntastic doesn't seem to play nicely with linux headers
"let g:syntastic_c_remove_include_errors = 1
""-- Rainbow brackets
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
""-- Neocomplete
let g:neocomplete#enable_at_startup = 1
""-- NERDtree
"""- Keybinding for NERDtree to open with ctrl+n
map <C-n> :NERDTreeToggle<CR>
"""- Making it start in the same directory

""-- Keybindings for CtrlP (Fuzzy File Search)
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"--- Make the 81st column stand out
""-- EITHER the entire 81st column, full-screen...
"highlight ColorColumn ctermbg=magenta
"set colorcolumn=81
""-- OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
"--- Make tabs, trailing whitespace, and non-breaking spaces visible
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
"--- Fixing color schemes
colorscheme vibrantink
syntax on
"--- Make tabs, trailing whitespace, and non-breaking spaces visible
""-- Use the first one if no Unicode is available...
""-- exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
exec "set listchars=tab:\u02FE\u2800,trail:\uB7,nbsp:~"
set list
"--- set font for gvim
set guifont=Source\ Code\ Pro\ Medium\ 16
"set guifont=Courier\ 16
"--- Fixing color schemes
syntax enable
set t_Co=256
syntax on
if has('gui_running')
    set background=dark
    colorscheme solarized
    set lines=35 columns=90
else
    set background=dark
    set t_Co=16
    let g:solarized_termcolors=16
    colorscheme solarized
    hi SpellBad cterm=underline
    hi Comment cterm=none
    hi vimLineComment cterm=none
    hi SpecialKey ctermfg=12
endif
let g:solarized_termcolors = 16
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_termtrans = 1
let g:solarized_contrast = "high"
