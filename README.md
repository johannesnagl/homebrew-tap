# johannesnagl/homebrew-tap

Homebrew casks for [@johannesnagl](https://github.com/johannesnagl)'s macOS apps.

## Casks

| Cask | Description | Requires |
|------|-------------|----------|
| [`showmd`](https://showmd.yetanother.one) | Quick Look extension that renders Markdown beautifully | macOS 26 (Tahoe) or newer |
| [`holdor`](https://holdor.yetanother.one) | Menu bar app that prevents macOS sleep while AI agents are running | macOS 13 (Ventura) or newer, Apple silicon |

## Install

```sh
brew install --cask johannesnagl/tap/showmd
brew install --cask johannesnagl/tap/holdor
```

Or tap first, then install by name:

```sh
brew tap johannesnagl/tap
brew install --cask showmd
```

Both apps are signed and notarized, so Gatekeeper will not get in the way.

## Uninstall

```sh
brew uninstall --cask showmd
```

Add `--zap` to also remove preferences and container data:

```sh
brew uninstall --zap --cask showmd
```

## Reporting issues

Please file in the right place, it saves a round trip:

- **Packaging problems** — anything in a `Casks/*.rb` file, deprecation warnings, a stale `version` or `sha256`, a cask that fails to load — belong [in this repo](https://github.com/johannesnagl/homebrew-tap/issues).
- **App bugs** — belong in the app's own repo: [showmd](https://github.com/johannesnagl/showmd/issues) or [holdor](https://github.com/johannesnagl/holdor/issues).

A note on cask deprecations: Homebrew's cask DSL changes periodically, and **both casks usually need the same fix**. If you spot a deprecated stanza, please check whether the other cask has it too. Fixing only one has bitten this tap before.

Before opening a PR, a quick look at the [open PRs](https://github.com/johannesnagl/homebrew-tap/pulls) is worth it — the same deprecation has been reported several times over.

### Verifying a cask change

Deprecation warnings are hidden in normal mode and become hard errors in developer mode, so check both:

```sh
brew info --cask johannesnagl/tap/showmd
HOMEBREW_DEVELOPER=1 brew info --cask johannesnagl/tap/showmd
HOMEBREW_DEVELOPER=1 brew audit --cask --strict johannesnagl/tap/showmd
```

Note that `showmd`'s cask is mirrored at [`homebrew/showmd.rb`](https://github.com/johannesnagl/showmd/blob/main/homebrew/showmd.rb) in the showmd repo. Changes here should be mirrored there so the two do not drift.

## Contributors

Thanks to everyone who has improved these casks:

- [@oschrenk](https://github.com/oschrenk) — Original `depends_on` cask fix
- [@wburningham](https://github.com/wburningham) — Reported the `depends_on` breakage across both casks, and correctly predicted that fixing only one would leave the other broken
- [@ktreharrison](https://github.com/ktreharrison) — `depends_on` syntax fix for showmd
- [@pbroschwitz](https://github.com/pbroschwitz) — `depends_on` syntax fix for showmd
- [@TokkeDev](https://github.com/TokkeDev) (Rasmus Skovdal) — `postflight` → `postflight_steps` migration, with compatibility testing across every Homebrew release from 6.0.0 to 7.0.2
- [@tobiashochguertel](https://github.com/tobiashochguertel) (Tobias Hochgürtel) — `depends_on` syntax fix for holdor

## License

The casks in this repository are MIT licensed. The applications they install are covered by their own licenses.
