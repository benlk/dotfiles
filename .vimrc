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

" Enable syntax highlighting
" Also enables filetype detection
syntax on

" set tab width to 4
set tabstop=4
set shiftwidth=4
" Exceptions:
autocmd FileType js setlocal shiftwidth=2 tabstop=2 expandtab
autocmd BufNewFile,BufRead *.scss setf css " not the recommended way to do this
autocmd BufNewFile,BufRead *.sass setf css " not the recommended way to do this
autocmd BufNewFile,BufRead *.less setf css " not the recommended way to do this
	" copied from https://stackoverflow.com/questions/3083474/how-to-make-less-files-to-have-css-syntax-highlight-in-vim/9550944#9550944
	" should use http://vimdoc.sourceforge.net/htmldoc/filetype.html#ftdetect instead
autocmd FileType css setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal expandtab

" Enable wordwrap.
set textwidth=0 wrap linebreak
" Enable unicode characters.  This is needed for 'listchars' below.
set encoding=utf-8
" Display special characters for certain whitespace situations.
" And show trailing characters
set list
set listchars=tab:»-,trail:·,extends:…,precedes:…,nbsp:&
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
hi SpecialKey ctermfg=102
" Correct filetype for markdown files
au BufNewFile,BufFilePre,BufRead *.md,*.markdown,*.mdown set filetype=markdown


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
set showmode
set number

nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
" vim: set ft=vim :

" formatoptions: default is tcq, adding r here to make vim insert a comment leader
" at the start of a line following a one.
set fo=cqrt

" Change default so that `-` is a comment on multiple lines
" default: comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-\ [\ ],b:-

" Don't force text width
set tw=0

" Rainbow parenthesis
" copied from J3RN/vim-config
let g:rainbow_active = 1

" https://github.com/vim-scripts/phpcs.vim
let g:phpcs_std_list="WordPress"
let g:phpcs_vcs_type = 'svn' " fake; I use git
" ^ input mode map
"   mapped to macbook pause/prev/next
inoremap <F8>  <ESC>:Phpcs<CR>
inoremap <F7> <ESC>:cprev<CR>
inoremap <F9> <ESC>:cnext<CR>
" ^ normal mode map
noremap <F8>  <ESC>:Phpcs<CR>
noremap <F7> <Esc>:cprev<CR>
noremap <F9> <ESC>:cnext<CR>

" A note on autocompletion: ^x ^o
" <li>ex</

" :help abbreviate
" Abbreviation section! http://vim.wikia.com/wiki/Using_abbreviations
"
" php var_log function, see https://github.com/INN/largo/pull/1428
iab var_log error_log(var_export(, true));<Left><Left><Left><Left><Left><Left><Left><Left><Left>
