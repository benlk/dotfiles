" When creating a new line, set indentation same as previous line.
set autoindent
" Allow i_backspace over indent, eol and start-of-insert
set backspace=2
" Highlight search results.
set hlsearch
set ruler
set background=dark
 If run in a terminal, set the terminal title
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

let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set nomodeline
set mouse=a
