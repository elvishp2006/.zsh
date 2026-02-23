source $(brew --prefix)/opt/fzf/shell/key-bindings.zsh
source $(brew --prefix)/opt/fzf/shell/completion.zsh

export FZF_DEFAULT_OPTS='
  --color=bg+:#263238,bg:#1e272e,spinner:#89ddff,hl:#82aaff
  --color=fg:#8796b0,header:#82aaff,info:#ffcb6b,pointer:#89ddff
  --color=marker:#89ddff,fg+:#eeffff,prompt:#89ddff,hl+:#82aaff
  --height 40% --layout=reverse --border --inline-info
'

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {} 2> /dev/null | head -200'"

export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window down:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --exact
"

bindkey -r '^r'
bindkey '^[r' fzf-history-widget
