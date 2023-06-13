# Load Antigen
source "$HOME/.antigen.zsh"

# Hide computername


# Import Bash Profile
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bash_aliases'
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bash_secrets'
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bashrc'

# Load the on-my-zsh library
antigen use oh-my-zsh

# Antigen Bundles
antigen bundle git
antigen bundle sobolevn/wakatime-zsh-plugin
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle docker

# Load the theme
antigen theme murilasso

# Tell Antigen that you're done
antigen apply

# Change Prompt
#PROMPT="%B%F{green}%n@%m%f:${current_dir} ${rvm_ruby}
#${git_branch} %B$%b "
#RPS1="${return_code}"
neofetch
