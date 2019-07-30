# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source Liquid prompt (in interactive shells && exists)
[[ $- = *i* ]] && [[ -f $HOME/.extra/liquidprompt/liquidprompt ]] && source $HOME/.extra/liquidprompt/liquidprompt
export GPG_TTY=$(tty)

# Add local scripts to PATH
export PATH=$PATH:~/bin

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

export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin

# Fix weirdness with MacOS and GPG
if [[ "$platform" == "macos" ]]; then
  GPG_TTY=$(tty)
  export GPG_TTY
fi

# MacOS specific aliases
if [[ "$platform" == "macos" ]]; then
  alias git="hub"
fi

# User specific aliases and functions
alias attach="tmux attach -t"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
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
alias switch="tmux switch -t"
alias tf="terraform"
alias tfp="terraform plan"
alias vim="nvim"
# source ~/.bash_prompt

cdu () { cd "${PWD%/$1/*}/$1"; }

# Source some private env vars
[ -f ~/.local_vars ] && source ~/.local_vars

# Urbit env vars
export MOON="silteb-famnux-sicbyn-sipbec"

#GCP Terraform Env
export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/terraform-admin.json
export VAULT_ADDR=https://127.0.0.1:8200/

#Auto Complete libraries
source <(kubectl completion bash)
source <(minikube completion bash)
source <(helm completion bash)
complete -o default -F __start_kubectl k
complete -C /home/null/.local/bin/vault vault
complete -C /home/null/.local/bin/consul consul
export PATH=$PATH:~/.jx/bin
