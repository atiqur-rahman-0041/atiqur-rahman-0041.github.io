#!/usr/bin/env bash
# Preview the site locally before pushing to GitHub Pages.
# Usage: ./serve.sh [port]   (default port: 8000)
set -euo pipefail
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo "Previewing at http://localhost:${PORT}  (Ctrl+C to stop)"
( sleep 1 && command -v open >/dev/null && open "http://localhost:${PORT}" ) &
exec python3 -m http.server "$PORT" --bind 127.0.0.1
