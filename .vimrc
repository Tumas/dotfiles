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
set cursorline

" show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [%p%%]\ [LEN=%L]
set laststatus=2

" set guifont=droid\ sans\ mono\ 9
"set guifont=Inconsolata\ 11
set guifont=Consolas\ 10

set guioptions-=T
set guioptions-=m

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" toggle menu bar
map <silent> <C-F2> :if &guioptions =~# 'm'<bar>
  \set guioptions-=m<bar>
\else <Bar>
  \set guioptions+=m<bar>
\endif<CR>

:colorscheme herald
:syntax enable

" balloon settings
" show balloon when hovered on folded area
function! FoldSpellBalloon()
  let foldStart = foldclosed(v:beval_lnum)
  let foldEnd = foldclosedend(v:beval_lnum)
  let lines = []
  " Detect if we are in the fold
  if foldStart > 0
    let numLines = foldEnd - foldStart + 1
    " if we have too many lines in fold, show only the first 14
    " and the last 14 lines
    if (numLines > 31)
      let lines = getline(foldStart, foldStart + 14)
      let lines += ['-- Snipped ' . (numLines - 30) . ' lines --']
      let lines += getline(foldStart, foldEnd)
    else
      let lines = getline(foldStart, foldEnd)
    endif
  endif
  return join(lines, has("balloon_multiline") ? "\n" : " ")
endfunction

set balloonexpr=FoldSpellBalloon()
set ballooneval
set balloondelay=400

" get rid of .swp and ~ files
set directory=~/.backups
set backupdir=~/.backups

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
"map <F7> :Fold \v^(^\s*def\s*)<lf>

" XML
let mapleader = ","
nmap <Leader>l :!xmllint --noout %<lf>
