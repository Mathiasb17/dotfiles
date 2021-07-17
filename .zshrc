# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Documents/deps/nvim-linux64/bin:$HOME/Documents/deps/:/home/mathias/Documents/deps/node-v14.16.0-linux-x64/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mathias/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#

#source /home/mathias/Git/itron.visualstudio.com/DefaultCollection/RnD/_git/RivaPlatformASIC.toolchains/deploymentTools/vsts_deploy.sh
export PATH=$PATH:/home/mathias/Git/itron.visualstudio.com/DefaultCollection/RnD/_git/RivaPlatformASIC.toolchains
# defaults
export VISUAL=vim
export EDITOR="$VISUAL"

# container aliases
alias lxclist="~/itronGit/RivaPlatformASIC.toolchains/containerTools/listContainers.sh"
alias entergen5="~/itronGit/RivaPlatformASIC.toolchains/containerTools/enterContainer.sh ubuntu-mathias-Gen5Riva-bionic"
alias entertrusty="lxc exec ubuntu-$USER-RIVA-FIRMWARE-trusty -- sudo --login -u $USER"

# git

# git stash aliases
alias gsl='git stash list'
alias gss='git stash save'
alias gst='git stash'
alias gsa='git stash apply'
alias gsp='git stash pop'

# git commit aliases
alias gcm='git commit'
alias gcma='git commit -a'
alias gcmam='git commit -a -m'

# git push/pull aliases
alias gpsh='git push'
alias gpll='git pull'

# git deltas aliases
alias gs='git status'
alias gd='git diff'

alias gadog='git log --all --decorate --oneline --graph'

function gl()
{
	if [ -z "$1" ]; then
		git log;
	else
		git log -$1;
	fi
}

alias vi="nvim"
alias vim="nvim"

alias entergen5="~/itronGit/RivaPlatformASIC.toolchains/containerTools/enterContainer.sh mathias-ubuntu-Gen5Riva-bionic"
alias goscripts="cd /home/mathias/Downloads/GenXNetwork.TestTools/test_tools"
alias goriva="cd /home/mathias/itronGit/RIVA_FIRMWARE"
alias gonetcore="cd /home/mathias/itronGit/RIVA_FIRMWARE/Repos/GenXNetworkCore"
alias goins="cd /home/mathias/itronGit/RIVA_FIRMWARE/Repos/GenXNetworkCore/Projects/3rdParty/INS-FW"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=nvim
export VISUAL=nvim

function ipv6_to_mac()
{
    echo "$1" |
        tr  ":" "\n" |
        sed -r 's/^(.{1})$/000\1/g' |
        sed -r 's/^(.{2})$/00\1/g' |
        sed -r 's/^(.{3})$/0\1/g' |
        tr "\n" ":" |
        sed -r 's/.*(07.*)$/\1/' |
        sed -r 's/\://g' |
        sed -r 's/(..)/\1\:/g' |
        sed -r 's/^/00\:/' |
        sed -r 's/\:$/\n/'
}

function compute_idle {
    local riva_cpu_idle_output="$1"

    if [[ -z "$riva_cpu_idle_output" ]]; then
        echo -1.0
        return 1
    else
        local ps_user ps_nice ps_sys ps_idle ps_iowait ps_irq ps_softirq ps_steal ps_guest ps_guestnice
        riva_cpu_idle_output=$(echo "$riva_cpu_idle_output" | sed '0,/USAGE:/d')
        ps_user=$(echo "riva_cpu_idle_output" | sed -n '1p')
        ps_nice=$(echo "riva_cpu_idle_output" | sed -n '2p')
        ps_sys=$(echo "riva_cpu_idle_output" | sed -n '3p')
        ps_idle=$(echo "riva_cpu_idle_output" | sed -n '4p')
        ps_iowait=$(echo "riva_cpu_idle_output" | sed -n '5p')
        ps_irq=$(echo "riva_cpu_idle_output" | sed -n '6p')
        ps_softirq=$(echo "riva_cpu_idle_output" | sed -n '7p')
        ps_steal=$(echo "riva_cpu_idle_output" | sed -n '8p')
        ps_guest=$(echo "riva_cpu_idle_output" | sed -n '9p')
        ps_guestnice=$(echo "riva_cpu_idle_output" | sed -n '10p')

        echo "scale=2; ($ps_idle)/($ps_user + $ps_nice + $ps_sys + $ps_idle + $ps_iowait \
            + $ps_irq + $ps_softirq + $ps_steal + $ps_guest + $ps_guestnice) * 100" | bc
        return 0
    fi
}
