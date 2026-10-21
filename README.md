# Universal Desktop Environment (UDE)

**One desktop. Any system.**

**UDE** is an experimental, open-source **cross-platform desktop shell / desktop environment** intended to provide a consistent, customisable graphical interface on Linux, Windows and macOS while using the host operating system's native applications and services.

> **Status: concept / early development.** Platform support and architectural features below are targets, not a claim of completed implementations.

## What developers can work on

- **Desktop shell and window management:** configurable taskbar, app overview, window controls, tiling, task switching and responsive desktop layouts.
- **Application launcher:** Windows 8-style tiles, GNOME-like overview and macOS-style launchpad layouts; real application discovery, categorisation and launching.
- **Native integration:** host file managers, system settings, notifications, workspaces and application lifecycle on Linux, Windows and macOS.
- **Linux desktop integration:** investigate GNOME, Nautilus, Wayland/X11 and packaging/session boundaries; favour host facilities instead of replacing them without reason.
- **Modular UI:** optional components, accessible keyboard/touch operation, responsive layouts, theme settings and removable integrations.

UDE is **not** a compatibility layer that makes every `.exe`, `.deb` or `.app` work on every operating system. That is a separate problem; the initial scope is a consistent interface over each host's native capabilities.

## Architecture in one minute

```text
UDE desktop shell / launcher / taskbar / window controls
                      ↕ host adapters
 Linux desktop services | Windows shell APIs | macOS APIs
                      ↕
            Host OS and native apps
```

See [technical focus](docs/technical-focus.md), [developer onboarding](CONTRIBUTING.md) and the [UDE design sketches](https://github.com/ude-desktop/ude-desktop/tree/main/docs/design).

## Where help is useful

Developers familiar with **desktop environments, compositors, Wayland, X11, GNOME extensions, GTK, Qt, Windows shell integration, macOS APIs, accessibility and app launchers** can help shape testable platform adapters and small prototypes. Browse [issues](../../issues) or open a scoped design question using the included templates.

## Licence and status

The repository carries the [GNU GPL v3](LICENSE). No comprehensive cross-platform release exists yet. Please distinguish prototypes, planned work and working features in contributions.

*Universal Desktop Environment — One desktop. Any system.*
