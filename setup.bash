# /bin/bash

cp ~/.bashrc ~/.bashrc.$( date +%Y-%m-%d ).bak
cp ~/.dotfiles/.bashrc-redirect ~/.bashrc

cp ~/.vimrc ~/.vimrc.$( date +%Y-%m-%d ).bak
cp ~/.dotfiles/.vimrc-redirect ~/.vimrc

mkdir ~/.vim/plugin/
curl https://github.com/luochen1990/rainbow/blob/master/plugin/rainbow.vim -o ~/.vim/plugin/rainbow.vim

case "$OSTYPE" in
'linux-gnu') 
    # ...
    cp .speedswapper ../.Xmodmap
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
