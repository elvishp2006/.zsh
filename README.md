# .zsh
> Minhas configurações do zsh.
## Pré requisitos
* starship;
  * `brew install starship`
* zsh;
  * `brew install zsh`

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