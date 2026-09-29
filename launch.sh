#!/usr/bin/env sh

if ! command -v claude >/dev/null 2>&1; then
    echo "Error: Claude Code is not installed, Install with: npm install -g @anthropic-ai/claude-code"
    printf "Press Enter to continue..."
    read -r _
    exit 1
fi

cd "$(dirname "$0")/workspace" || exit 1
exec claude --dangerously-skip-permissions --model claude-opus-5 --effort max --system-prompt-file ../jb.md
