#!/usr/bin/env bash
set -euo pipefail

UUID='dhruva@narkagni'
EXTENSION_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/gnome-shell/extensions/$UUID"

if [[ $EUID -eq 0 ]]; then
  echo 'Run this script as your normal desktop user, not with sudo.' >&2
  exit 1
fi

if command -v gnome-extensions >/dev/null 2>&1; then
  gnome-extensions disable "$UUID" 2>/dev/null || true
  if gnome-extensions uninstall "$UUID"; then
    echo 'Dhruva uninstalled. Log out and back in if the dock remains visible.'
    exit 0
  fi
fi

if [[ -d "$EXTENSION_DIR" ]]; then
  rm -rf -- "$EXTENSION_DIR"
  echo 'Removed the user-installed Dhruva extension.'
else
  echo 'No user-installed Dhruva extension found.'
fi

echo 'Log out and back in to refresh GNOME Shell.'
