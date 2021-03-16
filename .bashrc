# Load the bashrc colors configuration:
for file in ~/.bash_prompt; do
  [ -r "$file" ] && source "$file"
done
unset file

# Load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi