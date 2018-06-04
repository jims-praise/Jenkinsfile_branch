.bashchrome () {
    open -a "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome" "$1"
  }

alias emacs="open -a Emacs"
alias firefox="open -a firefox"



alias tesis="cd ~/Documents/Curricula/Maestria/IDS/"
alias h="cd ~/my-scripts/bash/"

#alias notifyDone='terminal-notifier -title "Terminal" -message "Done!"'
# Comentarios para los temas de iterm 2

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/Azeem/anaconda/bin:$PATH"
