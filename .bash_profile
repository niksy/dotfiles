#!/usr/bin/env bash

# Modify paths
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:$HOME/.gem/ruby/2.0.0/bin:$HOME/Library/Python/2.7/bin:$HOME/bin:$HOME/.bin:$PATH"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export DEBUG="iectrl:*"

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

# Add tab completion for Git (if it exists)
if [ -f "/opt/homebrew/etc/bash_completion.d/git-completion.bash" ]; then
	source "/opt/homebrew/etc/bash_completion.d/git-completion.bash"
fi

# Add `z` to shell (if it exits; instructions as per `brew info z`)
if [ -f "/opt/homebrew/etc/profile.d/z.sh" ]; then
	source "/opt/homebrew/etc/profile.d/z.sh"
fi
