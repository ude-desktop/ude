#!/usr/bin/env bash
set -euo pipefail

UPSTREAM="https://github.com/yannmasoch/nautilus-my-computer.git"
CACHE="${XDG_DATA_HOME:-$HOME/.local/share}/ude/integrations/nautilus-my-computer-source"

if [[ "$(id -u)" -eq 0 ]]; then
  echo 'Run as your normal desktop user, not root.' >&2
  exit 1
fi
if ! command -v nautilus >/dev/null 2>&1; then
  echo 'Nautilus (GNOME Files) is not installed. Nothing changed.' >&2
  exit 1
fi
if ! command -v git >/dev/null 2>&1; then
  echo 'Git is required to retrieve the upstream installer.' >&2
  exit 1
fi
if [[ -e "$CACHE" && ! -d "$CACHE/.git" ]]; then
  echo "Existing non-repository path: $CACHE. Refusing to overwrite." >&2
  exit 1
fi
mkdir -p "$(dirname "$CACHE")"
if [[ -d "$CACHE/.git" ]]; then
  echo "Using existing upstream source at $CACHE (no automatic updates)."
else
  git clone --depth 1 "$UPSTREAM" "$CACHE"
fi
if [[ ! -f "$CACHE/install.sh" ]]; then
  echo 'Upstream installer is missing; aborting.' >&2
  exit 1
fi
printf 'Upstream revision: '
git -C "$CACHE" rev-parse HEAD
printf 'Review the upstream script before proceeding: %s\n' "$CACHE/install.sh"
read -r -p 'Run upstream installer? [y/N] ' answer
[[ "$answer" =~ ^[Yy]$ ]] || { echo 'Cancelled.'; exit 0; }
(cd "$CACHE" && chmod +x install.sh && ./install.sh)
echo 'Installation command completed. Restart Nautilus or log out/in if required.'
