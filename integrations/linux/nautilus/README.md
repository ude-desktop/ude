# UDE — Nautilus integration

Optional Linux integration for systems using **GNOME Files (Nautilus)**.

Adds a familiar **My Computer** view for drives, devices and network mounts using the upstream [Nautilus My Computer](https://github.com/yannmasoch/nautilus-my-computer) project by **yannmasoch and contributors**.

## Install

From this directory, as the normal desktop user:

```bash
./install.sh
```

The script checks for Nautilus and Git, clones upstream into `~/.local/share/ude/integrations/nautilus-my-computer-source` (or the equivalent `XDG_DATA_HOME` location), shows the exact upstream commit and asks permission before running its installer. No `curl | sh` is used. The initial clone requires an internet connection.

## Remove

```bash
./uninstall.sh
```

This invokes the saved upstream installer's `--uninstall` mode. It does **not** remove Nautilus or delete the saved upstream source. The scripts are for the upstream **universal-script installation method**; if you installed the extension through APT, DNF, or another package manager, manage it using that package manager instead.

## Scope

- Optional, host-specific component; not a UDE core dependency.
- Intended for Linux systems with Nautilus installed.
- Not needed for other file managers.
- Upstream compatibility varies with Nautilus versions; see the upstream README.
- This wrapper does not modify or redistribute upstream source code.

## Upstream and licensing

Nautilus My Computer is developed by [yannmasoch and contributors](https://github.com/yannmasoch/nautilus-my-computer) and distributed under the **MIT License**. UDE's wrapper scripts are separate from that project. See the upstream repository for its full licence and notices.

**Note:** This is an initial integration wrapper, not yet tested across Linux distributions. Review the upstream script before approving execution. Upstream code is retrieved at installation time, and the revision is not pinned; production packaging should pin and verify a tested release.
