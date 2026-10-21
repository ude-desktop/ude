# Technical focus and contributor map

UDE aims to be a **desktop shell** that preserves host OS services rather than emulating a different OS. The initial technical focus is launchers, desktop composition and native integrations.

## Relevant ecosystems (context, not dependencies)

- **Linux desktops:** GNOME Shell, KDE Plasma, Xfce; Wayland/X11, D-Bus and desktop entry specifications.
- **Application and file management:** Nautilus/GVfs, native launch mechanisms, filesystem/device navigation and installed-app metadata.
- **Other platforms:** Windows Shell APIs and macOS AppKit/LaunchServices are subjects for platform adapters, not completed support.

## Bite-sized engineering questions

1. Define a host-neutral application metadata model (name, icon, executable, category, capabilities).
2. Specify a layout-independent launcher API supporting tiled, overview and grid presentations.
3. Prototype a Linux-only adapter to enumerate apps without inventing missing icons or categories.
4. Decide how UDE Lite integrates with a running GNOME session without conflicting with compositor ownership.
5. Test keyboard navigation, high-DPI and touch accessibility on a prototype.

## Contribution acceptance

For proposals include host OS/version, reproducible behaviour, relevant original design reference, and whether the feature is **proposed**, **prototype** or **working**. Cross-platform executable compatibility is out of initial scope.
