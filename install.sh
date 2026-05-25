#!/usr/bin/env sh
set -eu

dotfiles_dir=$(cd "$(dirname "$0")" && pwd)
backup_dir="$HOME/.dotfiles-backup/$(date +%Y%m%d%H%M%S)"

for file in .vimrc .zshrc; do
  source="$dotfiles_dir/$file"
  target="$HOME/$file"

  if [ -e "$target" ] || [ -L "$target" ]; then
    if [ "$(readlink "$target" 2>/dev/null || true)" = "$source" ]; then
      printf 'already linked: %s\n' "$target"
      continue
    fi

    mkdir -p "$backup_dir"
    mv "$target" "$backup_dir/$file"
    printf 'backed up: %s -> %s\n' "$target" "$backup_dir/$file"
  fi

  ln -s "$source" "$target"
  printf 'linked: %s -> %s\n' "$target" "$source"
done

printf '\ndone. restart your shell or run: exec zsh\n'
