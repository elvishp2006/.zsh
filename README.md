# .zsh
> Minhas configurações do zsh.
## Pré requisitos
* starship;
  * `brew install starship`
* zsh;
  * `brew install zsh`
* Instalar fonte [FiraCode](https://github.com/tonsky/FiraCode);

## Instalação
* `cd ~ && git clone --recurse-submodules git@github.com:elvishp2006/.zsh.git`
* Colocar o seguinte conteúdo em `~/.zshrc`:
```bash
source $HOME/.zsh/.zshrc

DISABLE_AUTO_TITLE=true

precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
```

## Atualização dos Plugins
* `git submodule update --remote`

## Ferramentas de Produtividade

### Instalação
```bash
brew install fzf zoxide atuin bat fd tree ripgrep
$(brew --prefix)/opt/fzf/install --key-bindings --completion --no-update-rc
atuin init zsh
atuin import auto
```

### Atalhos
- `Ctrl+r`: Busca no histórico (atuin)
- `Alt+r`: Busca no histórico alternativa (fzf)
- `Ctrl+t`: Busca de arquivos (fzf)
- `Alt+c`: Navegação rápida de diretórios (fzf)
- `z <padrão>`: Pular para diretório frequente (zoxide)
- `zi`: Seleção interativa de diretórios (zoxide + fzf)

### Comandos
- `zhist`: Estatísticas do histórico
- `\cd`: cd nativo (cd agora é alias para z)
