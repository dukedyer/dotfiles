# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -e /home/duke/.nix-profile/etc/profile.d/nix.sh ]; then . /home/duke/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Haskell Stack PATH
export PATH=$PATH:'/home/duke/.local/bin'

# Cargo Bin PATH
export PATH=$PATH:'/home/duke/.cargo/bin'

# source vars
source ~/.vars
source ~/.aliases


startx
. "$HOME/.cargo/env"
