# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias new_tag="echo $(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)"

# Source Liquid prompt (in interactive shells && exists)
[[ $- = *i* ]] && [[ -f $HOME/.extra/liquidprompt/liquidprompt ]] && source $HOME/.extra/liquidprompt/liquidprompt
export GPG_TTY=$(tty)

# Add local scripts to PATH
export PATH=$PATH:~/bin:~/bin/tfenv/bin:~/bin/aws/bin

# Add local pip stuff to PATH
export PATH=$PATH:~/.local/bin

# Detect kernel
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
    platform='macos'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
    platform='freebsd'
fi

export ALTERNATE_EDITOR="vim"
export EDITOR="vim"                  # $EDITOR should open in terminal
export VISUAL="vim"      # $VISUAL opens in GUI with non-daemon as alternat

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Golang stuff
export GOPATH=$HOME/go
if [[ "$platform" == 'macos' ]]; then
	export GOROOT=/usr/local/opt/go/libexec
fi
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/usr/local/go/bin:$GOROOT/bin

# Fix weirdness with MacOS and GPG
if [[ "$platform" == "macos" ]]; then
  GPG_TTY=$(tty)
  export GPG_TTY
fi

if [[ "$platform" == "linux" ]]; then
	alias "packer"="~/bin/packer"
fi

# User specific aliases and functions
alias attach="tmux attach -t"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -S -v -p -m"
alias gcs="git commit -S -v -p"
alias gco="git checkout"
alias gds="git diff --staged"
alias gdu="git diff --unstaged"
alias gfa="git fetch --all"
alias gm="git merge"
alias gpsh="git push"
alias gpll="git pull"
alias gs="git status"
alias gu="git pull"
alias ll="ls -lahG"
alias lm="ls -l | more"
alias psql="docker run --rm -it --net=host postgres:11 psql"
alias switch="tmux switch -t"
alias tf="terraform"
alias tfp="terraform plan"
alias vim="nvim"
alias v="vaulted"
alias p="pass"
alias mk="microk8s.kubectl"
alias k="kubectl"
alias kc="kubectl config"
alias ctx="kubectl config use-context"

cdu () { cd "${PWD%/$1/*}/$1"; }

yeet () {
	echo $1;
	curl -F "file=@$1" https://0x0.st
}


# Source some private env vars
[ -f ~/.local_vars ] && source ~/.local_vars

# Urbit env vars
export MOON="silteb-famnux-sicbyn-sipbec"

# Rust
[ -f ~/.cargo.env ] && source ~/.cargo/env

# added by travis gem
[ -f /Users/brenbriggs/.travis/travis.sh ] && source /Users/brenbriggs/.travis/travis.sh

## Terraform code completion
source <(terraform-docs completion bash)

# Github CLI
eval $(gh completion --shell bash)

# Flux namespace forwarding
export FLUX_FORWARD_NAMESPACE=flux
