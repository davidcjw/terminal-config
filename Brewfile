# Brewfile — Homebrew dependencies for this terminal config.
#
# Install everything in one shot with:
#   brew bundle --file=Brewfile
#
# Run from the repo root. `brew bundle` is idempotent, so it is safe to
# re-run to pick up newly added tools.
#
# NOTE: Go is intentionally NOT listed here — it is installed via the
# official installer (https://go.dev/doc/install) for the Go LSP. See README.

# --- Neovim + build/search tooling ---
brew "neovim"   # `vi` alias in aliases/general.sh
brew "ripgrep"  # fast grep, used by nvim/telescope
brew "cmake"    # required to build some nvim plugins
brew "fzf"      # `find` alias in aliases/general.sh
brew "nvm"      # Node version manager
brew "node"     # Node.js runtime

# --- Shell / terminal ---
brew "tmux"      # aliases/tmux.sh
brew "git"       # aliases/git.sh
brew "blueutil"  # bluetooth toggles in aliases/general.sh

# --- Kubernetes / operators ---
brew "operator-sdk"  # `os` alias in aliases/go.sh

# --- Casks ---
cask "docker"          # Docker Desktop; aliases/docker.sh
cask "font-fira-code"  # ligatures for the terminal/editor
