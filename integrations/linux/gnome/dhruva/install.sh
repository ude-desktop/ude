#!/usr/bin/env bash
set -euo pipefail

REPO='https://github.com/NarkAgni/dhruva.git'
UUID='dhruva@narkagni'

if ! command -v gnome-shell >/dev/null 2>&1; then
  echo 'Dhruva requires GNOME Shell.' >&2
  exit 1
fi
if ! command -v git >/dev/null 2>&1; then
  echo 'Git is required. On Ubuntu: sudo apt install git' >&2
  exit 1
fi
if ! command -v make >/dev/null 2>&1; then
  echo 'Make is required. On Ubuntu: sudo apt install make' >&2
  exit 1
fi

workdir="$(mktemp -d)"
trap 'rm -rf "$workdir"' EXIT

echo 'Downloading Dhruva from its upstream repository...'
git clone --depth 1 "$REPO" "$workdir/dhruva"
cd "$workdir/dhruva"

# Dhruva's upstream README documents `make install`.
echo 'Installing Dhruva for the current user...'
make install

if command -v gnome-extensions >/dev/null 2>&1; then
  if ! gnome-extensions enable "$UUID"; then
    echo 'Extension installed; log out and back in, then enable it with:'
    echo "  gnome-extensions enable $UUID"
  fi
fi

echo 'Done. On Wayland, log out and back in to load the extension.'
echo 'Configure Dhruva panel mode in its extension preferences.'
