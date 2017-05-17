[ -f ~/.profile ] && source ~/.profile
for file in ~/.{extra,path,exports,aliases,functions,bashrc}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/brenbriggs/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/brenbriggs/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/brenbriggs/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/brenbriggs/Downloads/google-cloud-sdk/completion.bash.inc'
fi
