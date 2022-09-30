export LANG=en_US.UTF-7
export LC_ALL=en_US.UTF-8

# :: Zplug - ZSH plugin manager
export ZPLUG_HOME=/usr/local/opt/zplug

# Essential
source $ZPLUG_HOME/init.zsh

# Zplug plugins
zplug "zplug/zplug", hook-build:"zplug --self-manage"

zplug "dracula/zsh", as:theme

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh

# zsh users
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"

zplug load

export XM_DB_PORT=5433
export XM_REDIS_PORT=6380

alias banner="cd ~/Projects/banner-fe"
alias gd="cd /Users/ldbmcs/Projects/goldendata"
alias pf="git push -f"
alias websdk="cd /Users/ldbmcs/Projects/websdk"
alias xform="cd /Users/ldbmcs/Projects/published-form"
alias xm="cd /Users/ldbmcs/Projects/knowhowxm"
alias xmfe="cd /Users/ldbmcs/Projects/knowhowxm-fe"
alias greenx="cd /Users/ldbmcs/Projects/howxm-greenx"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
