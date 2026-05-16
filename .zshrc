# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira" # set by `omz`

plugins=(git command-not-found virtualenvwrapper virtualenv)

source $ZSH/oh-my-zsh.sh

alias vi='/home/mathias/local/nvim/bin/nvim'
alias vim='vi'

alias cfgsway='vi /home/mathias/.config/sway/config'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

sound() {
    case "$1" in

        "speaker")
            pactl set-default-sink alsa_output.usb-DisplayLink_Dell_Universal_Dock_D6000_1801266506-02.analog-stereo
            ;;

        "headphones")
            pactl set-default-sink alsa_output.usb-Yoyodyne_Consulting_UAC1_DAC-01.analog-stereo
            ;;

        *)
            echo "[ERROR] unsupported argument."
            ;;
    esac
}

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

export PATH=$PATH:/opt/
export PATH="/home/mathias/.local/bin:$PATH"

. "$HOME/.local/bin/env"

export PATH="$HOME/.npm-global/bin:$PATH"
