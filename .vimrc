"
" Some stuff copied from the default Ubuntu .vimrc
"
" More stuff copied from:
" http://www.guckes.net/vim/setup.html
"

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
" wildmenu, makes use of the status line to show possible completions of command line commands, file names, and more.
set wmnu

" When creating a new line, set indentation same as previous line.
set autoindent
" Allow i_backspace over indent, eol and start-of-insert
set backspace=2
" Highlight search results.
set hlsearch
set ruler
set background=dark
" If run in a terminal, set the terminal title
set title
" set tab width to 4
set tabstop =4
" Enable wordwrap.
set textwidth=0 wrap linebreak
" Enable unicode characters.  This is needed for 'listchars' below.
set encoding=utf-8
" Display special characters for certain whitespace situations.
set list
set listchars=tab:>·,trail:·,extends:…,precedes:…,nbsp:&
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
au BufRead,BufNewFile *.md,*.markdown,*.mdown set filetype=mkd


set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after


let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set nomodeline

set printoptions=paper:letter
set ruler

nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
" vim: set ft=vim :

" formatoptions: default is tcq, adding r here to make vim insert a comment leader
" at the start of a line following a one.
set fo=cqrt

" Don't force text width
set tw=0

" Show trailing characters
set list
set lcs=tab:»·
set lcs+=trail:·

" A note on autocompletion: ^x ^o
" <li>ex</
