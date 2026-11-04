#!/usr/bin/env bash

# Modify paths
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.bin:$HOME/.nvm/current/bin:$PATH"

# Load the shell dotfiles
# * ~/.extra can be used for other settings you don’t want to commit.
for file in $HOME/.{bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Do not autocomplete when accidentally pressing Tab on an empty line
shopt -s no_empty_cmd_completion;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Load Homebrew shell integrations (`bash-completion@2`, `z`, …)
# `bash-completion@2` also loads everything in `/opt/homebrew/etc/bash_completion.d`
for file in /opt/homebrew/etc/profile.d/*.sh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
