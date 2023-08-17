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

export jkatvm='sandbox-jkatkuri01.eng.ssnsgs.net'
export henrivm='sandbox-henguyen01.eng.ssnsgs.net'

export box11='6600260829.itron.com'
export box12='6600237cb1.itron.com'

alias sbox11="sshpass -p itron ssh -oHostKeyAlgorithms=+ssh-rsa root@$box11"
alias sbox12="sshpass -p itron ssh -oHostKeyAlgorithms=+ssh-rsa root@$box12"

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

alias entergen5='/home/mathias/itronGit/RivaPlatformASIC.toolchains/containerTools/enterContainer.sh g5rvm-mathias-Gen5Riva-bionic'
alias enternet='/home/mathias/itronGit/RivaPlatformASIC.toolchains/containerTools/enterContainer.sh g5rvm-mathias-GenXNetworkCore-bionic'
alias enternetmgr='/home/mathias/itronGit/RivaPlatformASIC.toolchains/containerTools/enterContainer.sh g5rvm-mathias-netmgr-bionic'

alias goriva='cd /home/mathias/itronGit/RIVA_FIRMWARE'
alias gonetcore='cd /home/mathias/Git/itron.visualstudio.com/DefaultCollection/RnD/_git/RIVA_FIRMWARE/Repos/GenXNetworkCore'
alias goins='cd /home/mathias/Git/itron.visualstudio.com/DefaultCollection/RnD/_git/RIVA_FIRMWARE/Repos/GenXNetworkCore/Projects/3rdParty/INS-FW'
alias goscripts='cd /home/mathias/Documents/GenXNetwork.TestTools'
alias goagent='cd /home/mathias/Documents/DistributedIntelligenceUnifiedSDK-ITRON-INTERNAL-ONLY-1.6.0/DistributedIntelligenceUnifiedSDK-ITRON-INTERNAL-ONLY/Agents/NetworkPLSTestAgentV1'

function genx_testtools_update_netmgr()
{
    cp /home/mathias/itronGit/RIVA_FIRMWARE/Repos/GenXNetworkCore/Projects/3rdParty/INS-FW/tools/net_mgr/net_mgr /home/mathias/Documents/GenXNetwork.TestTools/test_tools/NetworkAnalyzer/monitoring_scripts/
}

export LC_NUMERIC="en_US.UTF-8"

alias ssh='ssh -oHostKeyAlgorithms=+ssh-rsa'
alias scp='scp -oHostKeyAlgorithms=+ssh-rsa'

export PATH=$PATH:/home/mathias/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/

source /home/mathias/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
