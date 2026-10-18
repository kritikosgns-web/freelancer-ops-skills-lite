#!/usr/bin/env bash
# Installs the skills into ~/.claude/skills (user-level) or ./.claude/skills (project-level).
# Usage:  bash install.sh            -> user-level
#         bash install.sh --project  -> current project only
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
if [ "$1" = "--project" ]; then DEST="./.claude/skills"; else DEST="$HOME/.claude/skills"; fi
mkdir -p "$DEST"
cp -r "$HERE/skills/"* "$DEST/"
echo "Installed $(ls "$HERE/skills" | wc -l | tr -d ' ') skills to $DEST"
echo "Restart Claude Code, then type / to see them."
