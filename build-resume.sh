#!/usr/bin/env bash
# Build the resume PDF from files/resume/resume.tex.
#   ./build-resume.sh          build once
#   ./build-resume.sh --watch  rebuild automatically every time resume.tex is saved
# The finished PDF replaces files/resume/Md__Atiqur__Rahman__Resume.pdf (the file the site links to).
# Intermediate LaTeX files go to .latex-build/ (gitignored).
set -euo pipefail
cd "$(dirname "$0")"

SRC=files/resume/resume.tex
OUT=files/resume/Md__Atiqur__Rahman__Resume.pdf
BUILD=.latex-build

command -v latexmk >/dev/null || { echo "latexmk not found. Install MacTeX: https://tug.org/mactex/" >&2; exit 1; }
mkdir -p "$BUILD"

if [[ "${1:-}" == "--watch" ]]; then
  echo "Watching $SRC. Each save rebuilds $OUT. Press Ctrl+C to stop."
  exec latexmk -pdf -pvc -view=none -interaction=nonstopmode -outdir="$BUILD" \
    -e "\$success_cmd = q(cp '$BUILD/resume.pdf' '$OUT' && echo 'Updated $OUT');" \
    "$SRC"
fi

latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$BUILD" "$SRC" >/dev/null \
  || { echo "Build failed. See $BUILD/resume.log" >&2; exit 1; }
cp "$BUILD/resume.pdf" "$OUT"
echo "Built $OUT ($(pdfinfo "$OUT" 2>/dev/null | awk '/^Pages/ {print $2}') pages)"
