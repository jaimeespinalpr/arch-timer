# Arch Timer

Archmere Tabata timer (single-page app / PWA).

## Local preview
- Double-click `index.html` (basic view)
- Or serve with any static server (recommended for PWA):
  - `python3 -m http.server 8000`
  - Open `http://127.0.0.1:8000/index.html`

## PWA (App instalable)

This project now includes:
- `manifest.webmanifest`
- `service-worker.js`
- install icons in `assets/`

To install on a phone/computer:
1. Open the deployed site in Chrome / Edge / Safari.
2. Use `Install app` / `Add to Home Screen`.

## Free publishing (GitHub Pages)

You can publish this for free using GitHub Pages (public repo).

### Option A (easiest)
1. Push changes to GitHub.
2. In GitHub repo: `Settings` -> `Pages`
3. Under `Build and deployment`, choose:
   - `Source`: `Deploy from a branch`
   - `Branch`: `main` and `/ (root)`
4. Save.

GitHub will give you a free URL like:
- `https://jaimeespinalpr.github.io/arch-timer/`

## Branding assets (optional)

Drop custom images into `assets/` with these names:
- `logo-full.png`
- `logo-mark.png`
- `watermark.png`

If they are missing, the app uses the current images as fallback.
