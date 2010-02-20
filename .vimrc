" general
set fileencodings=utf-8,ucs-bom,latin1
set nocp
set autochdir
set mouse=a
set vb t_vb=
filetype plugin on

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
set background=dark
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
