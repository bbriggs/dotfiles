# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export ALTERNATE_EDITOR="vim"
export EDITOR="vim"                  # $EDITOR should open in terminal
export VISUAL="vim"      # $VISUAL opens in GUI with non-daemon as alternat

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias attach="tmux attach -t"
alias be="bundle exec"
alias bu="bundle update"
alias ec="emacsclient -c -a emacs"
alias eq="qpaeq"
alias equalizer="qpaeq"
alias et="emacs -t"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gds="git diff --staged"
alias gdu="git diff --unstaged"
alias gfa="git fetch --all"
alias gm="git merge"
alias gp="git push"
alias gs="git status"
alias gu="git pull"
alias ll="ls -l"
alias lm="ls -l | more"
alias switch="tmux switch -t"
alias test-acceptance="bundle exec rspec spec/acceptance"
alias test-spec="bundle exec rake validate lint spec"
alias tf="terraform"
alias tfp="terraform plan"

export PATH=$PATH:/home/briggsb/.gem/ruby/2.3.0/bin:/home/briggsb/bin
export VAGRANT_DEFAULT_PROVIDER=virtualbox
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\[\033[33;1m\]\h \w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$  \n| => "
#export PS2="| => "
source ~/.bash_prompt

# Source some private env vars
source ~/.tf_vars

# Urbit env vars
export MOON="silteb-famnux-sicbyn-sipbec"

# added by travis gem
[ -f /home/briggsb/.travis/travis.sh ] && source /home/briggsb/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
