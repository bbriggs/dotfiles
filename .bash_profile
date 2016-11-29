source ~/.profile
for file in ~/.{extra,path,exports,aliases,functions,bashrc}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done

if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/brenbriggs/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/brenbriggs/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/brenbriggs/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/brenbriggs/Downloads/google-cloud-sdk/completion.bash.inc'
fi
