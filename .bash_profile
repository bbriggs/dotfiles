[ -f ~/.profile ] && source ~/.profile
for file in ~/.{extra,path,exports,aliases,functions,bashrc}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/davidallen/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/davidallen/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/davidallen/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/davidallen/Downloads/google-cloud-sdk/completion.bash.inc'
fi

# Added by Krypton
export GPG_TTY=$(tty)

[ -f "$HOME/.cargo/bin" ] && export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
