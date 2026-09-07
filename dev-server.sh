#!/bin/bash
# Hub.Gaymer.Social - Local dev server
# Usage: ./dev-server.sh [port] [--no-dev-mode]
#   port            default: 8000
#   --no-dev-mode   don't print the dev-banner hint; the page itself only
#                   shows the banner on localhost/127.0.0.1 anyway
#
# This is a single static redirect page - no build step, so "dev mode" is
# just the page's own client-side check for a localhost hostname. Append
# ?nodev=1 to the URL to preview production behavior (the real redirect)
# locally instead of the suppressed dev banner.
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PORT=8000
NO_DEV_MODE=0

while [ $# -gt 0 ]; do
    case "$1" in
        --no-dev-mode) NO_DEV_MODE=1; shift ;;
        ''|*[!0-9]*) echo "Unknown option: $1" >&2; exit 1 ;;
        *) PORT="$1"; shift ;;
    esac
done

cd "$DIR"

if [ "$NO_DEV_MODE" -eq 1 ]; then
    echo "Serving http://127.0.0.1:$PORT/?nodev=1 (dev banner suppressed, real redirect fires)"
else
    echo "Serving http://127.0.0.1:$PORT/ (dev banner on, redirect suppressed)"
    echo "Append ?nodev=1 to test the real redirect locally."
fi

if command -v python3 >/dev/null 2>&1; then
    python3 -m http.server "$PORT"
else
    python -m http.server "$PORT"
fi
