# ZSH THEME
ZSH_THEME=""

# STARSHIP
eval "$(starship init zsh)"

# MANPAGE THEME
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;33m'
export LESS_TERMCAP_so=$'\e[01;44;37m'
export LESS_TERMCAP_us=$'\e[01;37m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'
export GROFF_NO_SGR=1

# GENERAL
export EDITOR="vim"

# HISTORY
alias history='history -i 1+'
HISTSIZE=5000
SAVEHIST=50000
HISTFILE=~/.zhistory
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# ALIAS
#alias pbcopy='xclip -selection clipboard' #Depends xclip package
#alias pbpaste='xclip -selection clipboard -o' #Depends xclip package
alias ssh='ssh -o ServerAliveInterval=15'
alias git='LANG="en_US.UTF-8" git'
alias code='flatpak run com.visualstudio.code'

# FUNCTIONS
ss() { /bin/ss $@ | column -t ;}