# Contributing to UDE

UDE is in early development. Contributions should improve a bounded part of the **cross-platform desktop shell**, native host integration, launcher or design research.

1. Open an issue describing the host OS, user problem, expected behaviour and a small acceptance test.
2. Label features **concept**, **prototype** or **verified**. Never imply a proposed OS adapter works without testing it.
3. Prefer modular changes and native host APIs. Avoid breaking existing desktop sessions or silently installing system services.
4. Include screenshots or video only when they are genuine test outputs; mark mockups clearly.
5. Record keyboard navigation, touch accessibility, resource use and clean uninstallation where relevant.
6. Observe the repository's [GPL-3.0 licence](LICENSE) and all upstream third-party licences.

Good starting areas: application metadata, launcher UX tests, a Linux host adapter and clear install/remove instructions. See [technical focus](docs/technical-focus.md).
