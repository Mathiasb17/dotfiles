# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/mathias/.config/omf"


# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set PATH /usr/local/cuda/bin/ /opt/Qt/Tools/QtCreator/bin $PATH
set PATH /opt/node-v4.4.7-linux-x64/bin $PATH

set LD_LIBRARY_PATH /opt/SFML-2.4.0/lib/ $LD_LIBRARY_PATH

alias vim='pynvim'
