# Modify paths (for Homebrew, local scripts, Node, etc.)
export GEM_HOME="/usr/local/system_ruby_gems"
export COMPOSER_HOME="/usr/local/composer_packages"
export PATH="/usr/local/bin:/usr/local/sbin:$GEM_HOME/bin:$COMPOSER_HOME/vendor/bin:$HOME/bin:$HOME/.bin:$PATH"
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
[ -f "/usr/local/etc/bash_completion.d/git-completion.bash" ] && source "/usr/local/etc/bash_completion.d/git-completion.bash"

# Add `z` to shell (if it exits; instructions as per `brew info z`)
[ -f "/usr/local/etc/profile.d/z.sh" ] && source "/usr/local/etc/profile.d/z.sh"
