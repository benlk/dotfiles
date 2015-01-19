# Dotfiles

I make no guarantee that any of this will be useful to you at any given time, or that it will work on your system.

## Setup

Navigate to your home directory. 

	cd ~
	git clone https://github.com/benlk/dotfiles.git .dotfiles
	cd .dotfiles
	./setup.bash
	
This backs up your old `~/.bashrc` to `~/.bashrc.CURRENTDATE.bak` and replaces it with a redirect to `~/.dotfiles/.bashrc`, which contains many important things. The new `~/.dotfiles/.bashrc` then sources `~/.dotfiles/.bashrc-general` and an OS-appropriate `.bashrc`.

## Computer-specific bashrc additions:

Add them to `.dotfiles/.bashrc-local`

## Miscellaneous functions

	rsize URL

Downloads the file at URL to `/tmp/` and prints its size before deleting the file. Useful for things like finding the size of a PDF.

	journal
	
Creates a datestamped file in the current directory.

# License

![WTFPL 2](http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-2.png)

		DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
			    Version 2, December 2004 

	 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net> 

	 Everyone is permitted to copy and distribute verbatim or modified 
	 copies of this license document, and changing it is allowed as long 
	 as the name is changed. 

		    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
	   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 

	  0. You just DO WHAT THE FUCK YOU WANT TO.
