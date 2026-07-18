#!/usr/bin/env bash
# Copy the canonical onboarding artifacts from Context/team-onboarding into this deploy repo.
set -euo pipefail
SRC="$(dirname "$0")/../../Context/team-onboarding"
cp "$SRC"/prezentacija.html "$SRC"/guide.html "$SRC"/vodic-aplikacije.html "$SRC"/orodja.html "$SRC"/starter-CLAUDE.md "$(dirname "$0")/"
rsync -a --delete "$SRC/img/" "$(dirname "$0")/img/"
