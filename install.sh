#!/usr/bin/env bash

DOTFILES="${DOTFILES:="$HOME/.dotfiles"}"

if [[ "$CODESPACES" = "true" ]] && [[ -d /workspaces/.codespaces/.persistedshare/dotfiles ]]; then
  ln -sf /workspaces/.codespaces/.persistedshare/dotfiles "$DOTFILES"
fi

curl -sS https://starship.rs/install.sh | sh -s -- --yes

if [[ ! -d ~/.config ]]; then
  mkdir -p ~/.config
fi

ln -sf "$DOTFILES/.zprofile" ~/.zprofile
ln -sf "$DOTFILES/starship.toml" ~/.config/starship.toml