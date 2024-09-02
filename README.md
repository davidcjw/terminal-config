# terminal-config
Config for terminal, including neovim, tmux, aliases, etc

## Neovim


**Dependencies**:

Install via brew:

- ripgrep
- cmake
- nvm and node
- fzf

Install [Golang](https://go.dev/doc/install) (for Go LSP).

Setup for Neovim lives under the `nvim` directory and all contents within should be placed in `~/.config/nvim`.

Therefore, simply copy the entire `nvim` directory in this repo to `~/.config`: `cp -r nvim $HOME/.config`.

## Aliases

Setup for aliases lives under the `aliases` directory and all contents within should be placed in `~/.local/include`.

```bash
# Append to ~/.zshrc
for file in $HOME/.local/include/*;
  do source $file
done
```

## VSCode Extensions

Install all of them using: `cat vscode/extensions.txt | xargs -L1 code --install-extension`

```text
ms-python.autopep8
njpwerner.autodocstring
ms-python.vscode-pylance
ms-python.python
ms-python.debugpy


catppuccin.catppuccin-vsc
equinusocio.vsc-material-theme-icons
vscodevim.vim

ms-vscode-remote.remote-containers
ms-azuretools.vscode-docker
tim-koehler.helm-intellisense
ms-kubernetes-tools.vscode-kubernetes-tools
redhat.vscode-yaml

mechatroner.rainbow-csv
ms-vscode.makefile-tools
eamodio.gitlens
rangav.vscode-thunder-client

golang.go
```

To be able to view ligatures, also install Fira Code via brew: `brew install font-fira-code`.

## tmux

For tmux, seems like copying the entire config (`tmux/.tmux.conf`) into the `$HOME` directory gave me some issues the previous time I tried it.

Hence, here are some guidance steps (hopefully they work seamlessly next time):

1. First, clone [tpm](https://github.com/tmux-plugins/tpm) which is the tmux plugin manager.
2. Copy config into `$HOME`: `cp tmux/.tmux.conf $HOME`.
3. Source the new config: `tmux source $HOME/.tmux.conf`.
4. If need to install new plugins, run `<prefix>` + `I`.
