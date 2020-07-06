[ -f ~/.profile ] && source ~/.profile
for file in ~/.{extra,path,exports,aliases,functions,bashrc}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done

# Added by Krypton
export GPG_TTY=$(tty)

[ -f "$HOME/.cargo/bin" ] && export PATH="$HOME/.cargo/bin:$PATH"
