# Dhruva — UDE GNOME integration

Upstream: https://github.com/NarkAgni/dhruva

This integration installs the third-party **Dhruva** GNOME Shell dock extension. It is intended as a basis for UDE's single-taskbar layout on GNOME systems.

## Install

From this directory:

```bash
bash install.sh
```

Requires GNOME Shell, Git and Make. On Ubuntu, install the latter two with `sudo apt install git make`.

The script clones the current upstream source into a temporary directory, runs its documented `make install` target and attempts to enable `dhruva@narkagni`. Log out and back in if needed.

## Notes

- UDE does **not** bundle or modify Dhruva's source code here.
- Panel mode and GNOME top-panel replacement are **not automatically configured** by this script.
- Review upstream changes before running: the script executes upstream installation code.
- Dhruva is independently maintained and licensed under GPL-3.0. See the upstream repository for licence terms.
- GNOME Shell version compatibility depends on the upstream release.

## Upstream

- Source: https://github.com/NarkAgni/dhruva
- GNOME Extensions: https://extensions.gnome.org/extension/9495/dhruva/
