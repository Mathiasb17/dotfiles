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
set PATH /usr/local/netbeans-8.2/bin $PATH
set PATH /usr/local/tor-browser_en-US $PATH

set LD_LIBRARY_PATH /opt/SFML-2.4.0/lib/ $LD_LIBRARY_PATH

alias vim='nvim'

export CHEAT_EDITOR="nvim"
export CHEATCOLORS=true
export CHEATPATH='~/.config/cheat/cheats'

export VULKAN_SDK=/home/mathias/vulkan/VulkanSDK/1.0.42.2/x86_64
set PATH $VULKAN_SDK/bin $PATH
set LD_LIBRARY_PATH $VULKAN_SDK/lib $LD_LIBRARY_PATH
set VK_LAYER_PATH $VULKAN_SDK/etc/explicit_layer.d 

export TERM=xterm
