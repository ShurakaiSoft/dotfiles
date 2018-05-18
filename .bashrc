# Steve's Custom `.bashrc`

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles and then some:
# * ~/.path can be used to extend `$PATH`
# * ~/.extra can be used for other settings that you don't want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,function,extras}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Use vi key bindings on the comamnd line for editing.
set -o vi
set editing-mode vi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path hames when using `cd`
shopt -s cdspell;

# Search path for the `cd` command
CDPATH=".:~:~/projects"


# Some auto-completion

# Add tab completion for many BASH commands
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# Enable tab completion for `g` which is an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  complete -o default -o nospace -F _git g;
fi

# Add tab completion for SSH hostnames based on `~/.ssh/config`, ignore wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;


# Add tab completion for node version management
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
