# Load Antigen
source "$HOME/.antigen.zsh"


# Import Bash Profile
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bash_aliases'
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bash_secrets'

# Load the on-my-zsh library
antigen use oh-my-zsh

# Antigen Bundles
antigen bundle git
antigen bundle sobolevn/wakatime-zsh-plugin
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme
antigen theme murilasso

# Tell Antigen that you're done
antigen apply
