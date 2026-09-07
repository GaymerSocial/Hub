# Contributing to Gaymer.Social Hub

This is a [Stux.Group](https://stux.group) project under the [GaymerSocial](https://github.com/GaymerSocial) organization. It was originally forked from [fosstodon/hub](https://github.com/fosstodon/hub) — the `upstream` git remote still points there. Gaymer.Social itself was discontinued in September 2026, so this repo is now just a static redirect shell rather than a Jekyll site.

## Local setup

Plain static HTML, no build step, no dependencies. See `dev-server.sh` (bash) / `dev-server.bat` (Windows):

```
./dev-server.sh                # http://127.0.0.1:8000, dev banner on (redirect suppressed)
./dev-server.sh 8080            # custom port
./dev-server.sh --no-dev-mode   # hints at ?nodev=1 to preview the real redirect
```

## Project conventions

- `index.html` and `404.html` hold identical redirect/notice content — keep them in sync if you edit either
- `_redirects` is the Netlify catch-all (`/* https://gaymer.social/ 301`) sending every legacy URL to the main notice; `404.html` is the fallback for hosts that only support redirects via a custom 404 page
- The dev-mode banner is a client-side check (inline script in `index.html`/`404.html`) for `localhost`/`127.0.0.1` — append `?nodev=1` to preview production behavior

## Versioning and changelog

- The version lives in `VERSION.md` (a bare version string) — bump it on every release
- Every release gets a `CHANGELOG.md` entry using `### Added` / `### Changed` / `### Fixed` subsections
- `commit.sh` (bash) and `commit.bat` (Windows) read `VERSION.md` and tag the release — run one of them to commit and tag

## Before committing

- Manually smoke-test `index.html`/`404.html` with the dev server — this project has no automated test suite
