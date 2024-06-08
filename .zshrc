# ~/.zshrc

# STARTSHIP
# https://starship.rs
eval "$(starship init zsh)"

# MANPAGE COLOR THEME
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;33m'
export LESS_TERMCAP_so=$'\e[01;44;37m'
export LESS_TERMCAP_us=$'\e[01;37m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'
export GROFF_NO_SGR=1

# HISTORY
alias history='history -i 1+'
HISTSIZE=5000                 # How many lines of history to keep in memory
SAVEHIST=50000                # Number of history entries to save to disk       
HISTFILE=~/.zhistory          # Where to save history to disk

# ALIAS
export CLICOLOR=1
alias ls='ls -G'
alias ll='ls -lG'
alias ssh='ssh -o ServerAliveInterval=15'
alias git='LANG="en_US.UTF-8" git'
alias get-ip='dig @8.8.8.8 +short'
alias get-public-ip='curl ifconfig.so'
alias speedtest='speedtest --secure --simple 2>/dev/null'
alias lsof-tcp='lsof -nP -iTCP -sTCP:LISTEN'
alias lsof-udp='lsof -nP -iUDP'

# AUTOCOMPLETE
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
source <(kubectl completion zsh)