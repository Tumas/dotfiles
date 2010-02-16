set fileencodings=utf-8,ucs-bom,latin1
 
set autoindent	
set expandtab
set sts=2
set sw=2
set bs=2
 
set hlsearch
set incsearch
set ignorecase
 
set ruler
set number
set nocp
set vb t_vb=
"set list listchars=trail:.,tab:>-
set mouse=a
 
"set guifont=monospace\ 9
"set guifont=DejaVu\ Sans\ Mono\ 9
set guifont=Droid\ Sans\ Mono\ 9
 
:colorscheme herald
:syntax enable
 
set background=dark
set guioptions-=T
set guioptions-=m
 
map <F5> "+p
map <F3> :NERDTree<lf>
map <F2> :TlistToggle<lf> 
" switching between vertical splits
map <A-j> <C-w><C-w>

" method folding 
map <F6> :Fold \v^(^\s*def\s*)<lf>
