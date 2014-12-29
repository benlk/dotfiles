# /bin/bash

cp ~/.bashrc ~/.bashrc.bak
cp ~/.dotfiles/.bashrc-redirect ~/.bashrc

case "$OSTYPE" in
'linux-gnu') 
    # ...
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
