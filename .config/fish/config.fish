# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/mathias/.config/omf"


# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set PATH /usr/local/cuda/bin/ $PATH

export LD_LIBRARY_PATH="/usr/local/cuda/lib64/:/opt/SFML-2.4.0/lib/:"

alias vim='nvim'

export CHEAT_EDITOR="nvim"
export CHEATCOLORS=true
export CHEATPATH='~/.config/cheat/cheats'

export TERM=xterm
