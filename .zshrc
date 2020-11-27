# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ljx/.oh-my-zsh"
export TERM_ITALICS=true
export BROWSER="google-chrome-stable"
export PATH=$PATH:/home/ljx/go/bin/:/home/ljx/MyBin/eclipse/:/home/ljx/MyScript/:/home/ljx/SourceCode/PintOS/pintos/src/utils

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="dogenpunk"
# ZSH_THEME="agnoster"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "amuse" "afowler" "agnoster" "amuse" "bira" "candy-kingdom" "cloud" "dogenpunk" "frisk" "funky" "half-life" "intheloop" "jnrowe" "miloshadzic" "mira" "mortalscumbag" "mrtazz" "murilasso" "nanotech" "nicoulaj" "norm")

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode extract emoji zsh-syntax-highlighting zsh-autosuggestions archlinux docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
eval $(thefuck --alias)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# useful aliases
alias zshconfig="nvim ~/.zshrc"
alias 。。=".."
alias c="clear"
alias woman="tldr"
alias wttr="curl wttr.in"
alias l="ls -la"
alias lg="lazygit"
alias sudo="sudo -E"
alias i3config="nvim ~/.config/i3/config"
alias vimconfig="nvim ~/.vimrc"
alias s="neofetch | lolcat"
alias when="date&&cal"
alias ECNUVPN.cn="sudo openconnect vpn-cn.ecnu.edu.cn"
alias ECNUVPN.ct="sudo openconnect vpn-ct.ecnu.edu.cn"
alias vim="nvim"
alias zshupdate="source ~/.zshrc"
alias texclean="rm *.aux *.fls *.log *.synctex.gz *.xdv *.fdb_latexmk" 
alias r="ranger"
alias swapescape="setxkbmap -option caps:swapescape"
alias n="nvim"
alias fontlist="fc-list"
alias polyconfig="vim ~/.config/polybar/config.ini"
alias startconfig="vim ~/.config/i3/.startup.sh"
alias tmtb="feh ~/图片/课表.png"
alias Onescreen="~/.screenlayout/Onescreen.sh"
alias here="$PWD"
alias hdmiaudio="pactl set-card-profile 0 output:hdmi-stereo"
alias diskanalyse="ncdu"
alias mroe="more"
alias cman="man 3"
alias sl="ls"
alias pc='proxychains4 -q'
alias icat='kitty +kitten icat'

eval "$(lua $HOME/.config/z_lua/z.lua --init zsh once enhanced)"

#Variables
export NEMU_HOME=/home/ljx/ics2019/nemu
export AM_HOME=/home/ljx/ics2019/nexus-am
export NAVY_HOME=/home/ljx/ics2019/navy-apps
export GOPATH=/home/ljx/go
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

# 给 man 增加漂亮的色彩高亮
export LESS_TERMCAP_mb=$'\E[1m\E[32m'
export LESS_TERMCAP_mh=$'\E[2m'
export LESS_TERMCAP_mr=$'\E[7m'
export LESS_TERMCAP_md=$'\E[1m\E[36m'
export LESS_TERMCAP_ZW=""
export LESS_TERMCAP_us=$'\E[4m\E[1m\E[37m'
export LESS_TERMCAP_me=$'\E(B\E[m'
export LESS_TERMCAP_ue=$'\E[24m\E(B\E[m'
export LESS_TERMCAP_ZO=""
export LESS_TERMCAP_ZN=""
export LESS_TERMCAP_se=$'\E[27m\E(B\E[m'
export LESS_TERMCAP_ZV=""
export LESS_TERMCAP_so=$'\E[1m\E[33m\E[44m'
