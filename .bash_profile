# Modify `$PATH` (for Homebrew, local scripts, Node, etc.)
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.bin:/usr/local/share/npm/bin:$PATH"

# Load the shell dotfiles
#     * ~/.extra can be used for other settings you don’t want to commit.
for file in $HOME/.{bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
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

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for Git
[ -f "/usr/local/opt/git/etc/bash_completion.d/git-completion.bash" ] && source "/usr/local/opt/git/etc/bash_completion.d/git-completion.bash"
