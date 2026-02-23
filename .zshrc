# Plugins
source $HOME/.zsh/fast-syntax-highlighting/F-Sy-H.plugin.zsh
source $HOME/.zsh/completion.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/history.zsh
source $HOME/.zsh/key-bindings.zsh

# Ferramentas de produtividade
source $HOME/.zsh/zoxide.zsh
source $HOME/.zsh/fzf.zsh
source $HOME/.zsh/atuin.zsh
source $HOME/.zsh/pet.zsh

# Plugins Init
autoload -Uz compinit

# Brew Completions
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

# Aliases
source $HOME/.zsh/aliases.zsh

eval "$(starship init zsh)"
