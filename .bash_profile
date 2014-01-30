# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Load RVM
[[ -s "/Users/moritz/.rvm/scripts/rvm" ]] && source "/Users/moritz/.rvm/scripts/rvm"

# Homebrew completion
[[ -s "/usr/local/Library/Contributions/brew_bash_completion.sh" ]] && source "/usr/local/Library/Contributions/brew_bash_completion.sh"

# Bash completion installed via Homebrew
for f in /usr/local/etc/bash_completion.d*; do
  source "$f"
done
unset f