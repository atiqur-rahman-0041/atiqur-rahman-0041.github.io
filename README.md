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
| `files/resume/` | Resume source (`resume.tex`) and the built PDF linked from the Resume section |
| `files/papers/` | Paper PDFs linked from Publications |
| `vendor/` | Bootstrap 4, jQuery, jQuery Easing, Font Awesome 4 (vendored) |

Devicon and Academicons icons and Google Fonts load from CDNs.

## Updating the resume

The resume is built from [`files/resume/resume.tex`](files/resume/resume.tex). Edit that file, then rebuild:

```sh
./build-resume.sh           # build once
./build-resume.sh --watch   # rebuild automatically on every save (Ctrl+C to stop)
```

Each build replaces `files/resume/Md__Atiqur__Rahman__Resume.pdf`, the file the site links to. Commit the `.tex` and the PDF together.

This needs a LaTeX install with `latexmk` (for example [MacTeX](https://tug.org/mactex/)). Intermediate build files go to `.latex-build/`, which git ignores.

`resume.tex` is published along with the rest of the site, so keep private notes out of it, including in comments.

## Credits

Based on the [Start Bootstrap Resume](https://github.com/StartBootstrap/startbootstrap-resume) template (MIT, see `LICENSE`).
