export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

bindkey '^r' _atuin_search_widget

export ATUIN_CONFIG_DIR="$HOME/.config/atuin"

zle -N atuin-up-search-widget
bindkey '^[[A' atuin-up-search-widget
bindkey '^[OA' atuin-up-search-widget
