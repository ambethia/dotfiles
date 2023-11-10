#!/usr/bin/env bash

DOTFILES_PATH="${DOTFILES_PATH:="$HOME/.dotfiles"}"

if [[ "$CODESPACES" = "true" ]] && [[ -d /workspaces/.codespaces/.persistedshare/dotfiles ]]; then
  ln -sf /workspaces/.codespaces/.persistedshare/dotfiles "$DOTFILES_PATH"
fi

curl -sS https://starship.rs/install.sh | sh
