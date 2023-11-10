#!/usr/bin/env bash

DOTFILES="${DOTFILES:="$HOME/.dotfiles"}"

if [[ "$CODESPACES" = "true" ]] && [[ -d /workspaces/.codespaces/.persistedshare/dotfiles ]]; then
  ln -sf /workspaces/.codespaces/.persistedshare/dotfiles "$DOTFILES"
fi

chsh -s /bin/zsh ${whoami}

ln -sf "$DOTFILES/.zshrc" ~/.zshrc
