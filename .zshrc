##################################
############# COLORS #############
##################################

#LS_COLORS='rs=0:di=1;97:fi=1;90';
LS_COLORS='rs=0:di=1;34:fi=1;30:ln=1;34'
export LS_COLORS

RIGHT_A=%D{%Y-%m-%d}
RIGHT_B=%D{%H:%M} 

COLOR_BG_GRAY=%K{240}
COLOR_BG_LIGHT_GRAY=%K{240}
COLOR_BG_WHITE=%K{255}

COLOR_FG_GRAY=%F{240}
COLOR_FG_LIGHT_GRAY=%F{240}
COLOR_FG_WHITE=%F{255}

GIT_DIRTY_COLOR=%F{133}
GIT_CLEAN_COLOR=%F{118}
GIT_PROMPT_INFO=%F{012}

ZSH_THEME_GIT_PROMPT_PREFIX=" \u2b60 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$GIT_PROMPT_INFO"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✔"

ZSH_THEME_GIT_PROMPT_ADDED="%F{082}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{166}✹%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{160}✖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{220]➜%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{082]═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{190]✭%f"

##################################
############# PROMPT #############
##################################

#PROMPT='%F{8}$%f '
#PROMPT='%F{243}%1~%f %F{White}%f  '
#PROMPT='%F{#808080}%1~%f %F{#FF4D4D}☭%F{White}  ' 
PROMPT='%F{#808080}%1~%f %F{White}♜%F{White}  '
# RPROMPT=$COLOR_FG_WHITE" %f$COLOR_BG_WHITE$COLOR_FG_GRAY%@ ""%f%k$COLOR_BG_GRAY$COLOR_FG_WHITE $RIGHT_A %f%k"
# #9e0909

##################################
############# BÁSICO #############
##################################

autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Colorls configs
PATH=$PATH:/home/fabricio/.local/share/gem/ruby/3.0.0/bin
source $(dirname $(gem which colorls))/tab_complete.sh 

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

xset r rate 300 50
PATH=$PATH:$HOME/.config/Scripts

##################################
############# ALIAS ##############
##################################

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias rm='rm -r'
# alias ls='ls --color=auto'
# alias ls='colorls -lA --sd'
alias ls='colorls --sd'

alias xrandr2560='xrandr --output HDMI-0 --mode 2560x1080'
alias xrandr1920='xrandr --output HDMI-0 --mode 1920x1080'
alias xrandr1280='xrandr --output HDMI-0 --mode 1280x720'

alias tar='tar -zxvf'
alias unrar='unrar x'
alias fetch='clear && neofetch'

alias i3config='vim .config/i3/config'
alias yml='vim .config/alacritty/alacritty.yml'
alias bashrc='vim .bashrc'
alias zshrc='vim .zshrc'
