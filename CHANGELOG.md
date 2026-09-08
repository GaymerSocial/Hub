# Changelog

All notable changes to this repo are documented here.

## v2.1.4

### Changed
- `assets/logo.png`/`assets/icon.png` moved from being vendored locally in this repo to the shared CDN at `https://global.media.gaymer.social/logo.png` / `/icon.png` (the same file was previously duplicated across all four GaymerSocial repos) — the favicon and README header logo references were updated accordingly and no longer carry the `?v=` cache-buster, since cache invalidation for that asset is now the CDN's concern rather than this repo's release version

## v2.1.3

### Added
- Favicon (`assets/icon.png`) reference in `index.html`/`404.html` now carries `?v=2.1.3` so browser/CDN caches invalidate if the icon is ever replaced — this is a plain static site with no build step, so the version string has to be bumped by hand alongside any future icon change

## v2.1.2

### Changed
- `README.md`'s footer brand-attribution block updated to the new two-line format (Built & Maintained by Gaymer.Social, Hosted by Stuxedo / Gaymer.Social is a part of the Stux.Group brand of businesses), replacing the older single-line disclaimer

## v2.1.1

### Changed
- `commit.sh`/`commit.bat` tag messages updated from `GaymerSocial/HubPage` to `GaymerSocial/Hub`, following the GitHub repo rename that dropped "Page" from the name

## v2.1.0

### Added
- "A Stux.Group Project · Powered by Stuxedo" footer badge (matching the convention used on Stuxs.Tools/Downl.one) added to `index.html`/`404.html`

## v2.0.0

### Changed
- Redirect target changed from `about.gaymer.social` to `https://gaymer.social/`, following Gaymer.Social's discontinuation in September 2026 (rising costs and the loss of infrastructure in the NorthC data centre fire)
- Entire Jekyll site removed — `index.md`, `coc.md`, `contact.md`, `support.md`, `team.md`, `about.md`, `404.md`, the `/legal` hub + sub-pages, `_layouts`, `_includes`, `_data`, `_posts`, `_drafts`, `Gemfile`(`.lock`), `_config.yml`, `_config.dev.yml`, and `assets/` are all gone
- Replaced with a single static `index.html` (+ `404.html` fallback) that redirects every request to `https://gaymer.social/`, plus a Netlify `_redirects` catch-all
- `dev-server.sh` / `dev-server.bat` rewritten as a plain static file server (Python's `http.server`) — no more Jekyll/Bundler dependency

### Removed
- All community content pages and the `/legal` sub-pages (moot once every request redirects away before rendering)

### Added
- `assets/logo.png`/`assets/icon.png` — the real Gaymer.Social logo/icon, vendored locally for the favicon and README header (replaces the earlier external hotlink)

## v1.0.0

### Added
- Root compliance docs: `README.md`, `CHANGELOG.md`, `VERSION.md`, `CONTRIBUTING.md`
- `commit.sh` / `commit.bat` — reads `VERSION.md` and tags releases
- `/legal` hub page ("Boring Legal Stuff") plus Privacy, Terms and Ethics, Cookies, Imprint, Disclaimer, and Opt-Out Preferences sub-pages, linked from nav and footer
- `dev-server.sh` / `dev-server.bat` — local Jekyll dev server, dev-mode banner on by default (`--no-dev-mode` to test production behavior)

### Changed
- `LICENSE` copyright holder updated to Stux.Group
