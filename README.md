# Homebrew tap for Varstotas

[Varstotas](https://github.com/dirondin/varstotas) is a free, open-source 3D modeller for makers:
furniture, workshop projects and 3D prints, in real units.

```bash
brew tap dirondin/tap
brew trust dirondin/tap        # recent Homebrew loads casks from third-party taps only when trusted
brew install --cask varstotas
```

Update with `brew upgrade --cask varstotas`, remove with `brew uninstall --cask varstotas`
(`--zap` also removes settings and libraries in `~/.varstotas`).

Varstotas is not notarized by Apple: on the first launch right-click it in Applications →
**Open** → **Open**, or run `xattr -dr com.apple.quarantine /Applications/Varstotas.app`.

The cask is updated automatically by the Varstotas release workflow; please report problems in the
[main repository](https://github.com/dirondin/varstotas/issues).
