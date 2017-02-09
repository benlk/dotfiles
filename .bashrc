# Ben Keith's bashrc.
#
# May break your system. Not guaranteed to work on all computers. 
# many parts copied from Ubuntu defaults. Other parts copied from paradigm/dotfiles

# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

### Shopt

# Update $LINES and $COLUMNS when terminal size changes.
shopt -s checkwinsize
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar


# Set the default text editor.
if which vim >/dev/null 2>&1
then
	export EDITOR="vim"
elif which vi >/dev/null 2>&1
then
	export EDITOR="vi"
fi

### History stuff

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"

# append to the history file, don't overwrite it
shopt -s histappend

### Color stuff, copied from Ubuntu defaults

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
    xterm-256color) color_prompt=yes;;
esac

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
		color_prompt=yes
	fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    TITLEBAR="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
### Aliases and other functions

source ~/.dotfiles/.bashrc-general

if [[ $OSTYPE == *"linux-gnu"* ]]; then
        # ...
	source ~/.dotfiles/.bashrc-linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    source ~/.dotfiles/.bashrc-osx
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
	echo "There is no cygwin-specific .bashrc file in ~/.dotfiles."
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
	echo "There is no msys-specific .bashrc file in ~/.dotfiles."
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
	echo "There is no win32-specific .bashrc file in ~/.dotfiles."
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
	echo "There is no freebsd-specific .bashrc file in ~/.dotfiles."
else
        # Unknown.
	echo "What sort of system is this? Check out ~/.dotfiles/.bashrc and then send the dotfiles creator an email, please."
fi
