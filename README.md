# homebrew-ilmari

Homebrew tap for ilmari.

## Install

```bash
brew install bnomei/ilmari/ilmari
```

## Maintain

Bump `version` and update all `sha256` values in `Formula/ilmari.rb` to match
the GitHub Release tarballs from `bnomei/ilmari`.

```bash
scripts/update-sha256.sh
```

Until `bnomei/ilmari` publishes GitHub Release assets, the formula keeps
placeholder `sha256` values.
