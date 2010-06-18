" general
set fileencodings=utf-8,ucs-bom,latin1
set nocp
set autochdir
set mouse=a
set vb t_vb=
filetype plugin on
filetype plugin indent on
filetype indent plugin on
syntax on

if $COLORTERM == 'gnome-terminal' 
    set term=gnome-256color 
    colorscheme railscasts 
else 
    colorscheme default 
endif 

" editing
set autoindent	
set expandtab
set sts=2
set sw=2
set bs=2

" search
set hlsearch
set incsearch
set ignorecase

" visual
set ruler
set number
set guifont=Droid\ Sans\ Mono\ 9
set guioptions-=T
set guioptions-=m
 
:colorscheme herald
:syntax enable
 
" mappings

map <A-q> :bn<lf>
map <F5> "+p
map <F6> "+y
map <F3> :NERDTree<lf>
map <F2> :TlistToggle<lf> 

" switching between vertical splits
map <A-j> <C-w><C-w>

" RUBY
" method folding 
map <F7> :Fold \v^(^\s*def\s*)<lf>

" XML
let mapleader = ","
nmap <Leader>l :!xmllint --noout %<lf>

" Clojure
let clj_highlight_builtins = 1
