export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export ZSH="$HOME/.config/oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-fzf-history-search
  )

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)" 

