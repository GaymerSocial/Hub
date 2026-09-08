<p align="center">
  <img src="assets/logo.png" width="300" alt="Gaymer.Social">
</p>

# Gaymer.Social Hub

This project was originally the informational hub site for the Mastodon social media instance [Gaymer.Social](https://gaymer.social), based on the [Fosstodon Hub](https://github.com/fosstodon/hub) project, adapted for the Gaymer.Social community.

**Gaymer.Social and Gaymer.Coffee were discontinued in September 2026**, due to rising costs and the loss of hosting infrastructure in the NorthC data centre fire. This repo is now just a static redirect shell: every request to `hub.gaymer.social` (see `index.html` / `_redirects`) forwards straight to [gaymer.social](https://gaymer.social/), where the discontinuation notice lives.

## Local development

Plain static HTML, no build step. See `dev-server.sh` (bash) / `dev-server.bat` (Windows):

```
./dev-server.sh                # http://127.0.0.1:8000, dev banner on (redirect suppressed)
./dev-server.sh --no-dev-mode   # hints at ?nodev=1 to preview the real redirect
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT, copyright &copy; Stux.Group — see [LICENSE](LICENSE). Originally based on [fosstodon/hub](https://github.com/fosstodon/hub).

---

*Built & Maintained by <img src="https://github.com/GaymerSocial.png" height="14" alt="Gaymer.Social" valign="middle"> [Gaymer.Social](https://github.com/GaymerSocial), Hosted by <img src="https://github.com/Stuxedo.png" height="14" alt="Stuxedo" valign="middle"> [Stuxedo](https://stuxedo.com).    
Gaymer.Social is a part of the <img src="https://media.stux.group/global/icon.png" height="14" alt="Stux.Group" valign="middle"> Stux.Group brand of businesses.*
