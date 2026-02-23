export PET_CONFIG_DIR="$HOME/.config/pet"

if command -v pet &> /dev/null; then
  function pet-select() {
    BUFFER=$(pet search --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle redisplay
    zle accept-line
  }
  zle -N pet-select
  stty -ixon
  bindkey '^s' pet-select
fi

alias pets='pet search'
alias petn='pet new'
alias pete='pet edit'
alias petx='pet exec'
alias petl='pet list'
