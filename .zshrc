# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira" # set by `omz`

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenvwrapper pip command-not-found fzf colored-man-pages zsh-syntax-highlighting tig)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias cfgzsh="nvim ~/.zshrc"
alias cfgomz="nvim ~/.oh-my-zsh"
alias cfgi3="nvim ~/.config/i3/config"

alias vi='/usr/local/bin/vim'
alias vim='vi'

export EDITOR='nvim'
export VISUAL="$EDITOR"

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export LC_NUMERIC="en_US.UTF-8"

alias ssh='ssh -oHostKeyAlgorithms=+ssh-rsa'
alias scp='scp -oHostKeyAlgorithms=+ssh-rsa'

export PATH=$PATH:/home/mathias/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/

source /home/mathias/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
