# /bin/bash

cp ~/.bashrc ~/.bashrc.$( date +%Y-%m-%d ).bak
cp ~/.dotfiles/.bashrc-redirect ~/.bashrc
touch ~/.dotfiles/.bashrc-local

cp ~/.vimrc ~/.vimrc.$( date +%Y-%m-%d ).bak
cp ~/.dotfiles/.vimrc-redirect ~/.vimrc

# vim plugins etc
mkdir -p ~/.vim/
mkdir -p ~/.vim/plugin/
curl https://raw.githubusercontent.com/luochen1990/rainbow/master/plugin/rainbow.vim -o ~/.vim/plugin/rainbow.vim
curl https://raw.githubusercontent.com/plasticboy/vim-markdown/master/syntax/markdown.vim -o ~/.vim/plugin/markdown.vim
mkdir -p ~/.vim/syntax/
curl https://raw.githubusercontent.com/StanAngeloff/php.vim/master/syntax/php.vim -o ~/.vim/syntax/php.vim

case "$OSTYPE" in
'linux-gnu')
    # ...
    cp .speedswapper ../.Xmodmap
    git config --global alias.branches 'branch --list'
    ;;
'darwin')
    # Mac OSX
    ./osx_setup.bash
    ;;
'cygwin')
    # POSIX compatibility layer and Linux environment emulation for Windows
    ;;
'msys')
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    ;;
'win32')
    # I'm not sure this can happen.
    ;;
'freebsd')
    # ...
    ;;
*)
    # Unknown.
    ;;
esac
