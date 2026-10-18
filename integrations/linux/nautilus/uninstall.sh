#!/usr/bin/env bash
set -euo pipefail
CACHE="${XDG_DATA_HOME:-$HOME/.local/share}/ude/integrations/nautilus-my-computer-source"
if [[ "$(id -u)" -eq 0 ]]; then
  echo 'Run as your normal desktop user, not root.' >&2
  exit 1
fi
if [[ ! -f "$CACHE/install.sh" ]]; then
  echo "Saved upstream installer not found at $CACHE." >&2
  echo 'If you installed through a distro package manager, uninstall with that package manager.' >&2
  echo 'Otherwise see https://github.com/yannmasoch/nautilus-my-computer for upstream removal instructions.' >&2
  exit 1
fi
read -r -p 'Remove Nautilus My Computer integration? [y/N] ' answer
[[ "$answer" =~ ^[Yy]$ ]] || { echo 'Cancelled.'; exit 0; }
(cd "$CACHE" && chmod +x install.sh && ./install.sh --uninstall)
echo 'Uninstall command completed. Saved upstream source retained for inspection.'
