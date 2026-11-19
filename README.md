# atiqur-rahman-0041.github.io

Personal website of Md Atiqur Rahman, served by GitHub Pages at
<https://atiqur-rahman-0041.github.io>.

It is a plain static site with no build step: whatever is on `main` is what gets published.

## Preview locally before pushing

```sh
./serve.sh          # serves on http://localhost:8000 and opens your browser
./serve.sh 9000     # or choose another port
```

This needs only `python3`, which comes with macOS. Edit files, refresh the browser, and push once it looks right.

Opening `index.html` directly with `file://` also mostly works. The local server is closer to what GitHub Pages serves.

## Layout

| Path | What it is |
| --- | --- |
| `index.html` | All page content |
| `css/resume.css` | Site styles, including the color scheme (edit directly) |
| `js/resume.js` | Smooth scrolling and nav highlighting |
| `img/` | Profile photo, award image, favicons |
| `files/resume/` | Resume PDF linked from the Resume section |
| `files/papers/` | Paper PDFs linked from Publications |
| `vendor/` | Bootstrap 4, jQuery, jQuery Easing, Font Awesome 4 (vendored) |

Devicon and Academicons icons and Google Fonts load from CDNs.

## Updating the resume

Replace `files/resume/Md__Atiqur__Rahman__Resume.pdf` with a file of the same name, or rename it and update the link in the `#cv` section of `index.html`.

## Credits

Based on the [Start Bootstrap Resume](https://github.com/StartBootstrap/startbootstrap-resume) template (MIT, see `LICENSE`).
