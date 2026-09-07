# Changelog

All notable changes to this repo are documented here.

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
