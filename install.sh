#!/bin/bash

# Installation script for export-conversation Claude Code skill
# Usage: ./install.sh

set -e

echo "🚀 Installing export-conversation skill..."

# Define paths
SKILL_NAME="export-conversation"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
TARGET_DIR="$CLAUDE_SKILLS_DIR/$SKILL_NAME"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create skills directory if it doesn't exist
if [ ! -d "$CLAUDE_SKILLS_DIR" ]; then
    echo "📁 Creating Claude skills directory..."
    mkdir -p "$CLAUDE_SKILLS_DIR"
fi

# Check if skill already exists
if [ -L "$TARGET_DIR" ]; then
    echo "⚠️  Symlink already exists at $TARGET_DIR"
    read -p "Remove and reinstall? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm "$TARGET_DIR"
    else
        echo "❌ Installation cancelled"
        exit 1
    fi
elif [ -d "$TARGET_DIR" ]; then
    echo "⚠️  Directory already exists at $TARGET_DIR"
    read -p "Remove and reinstall? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$TARGET_DIR"
    else
        echo "❌ Installation cancelled"
        exit 1
    fi
fi

# Create symlink
echo "🔗 Creating symlink..."
ln -s "$SCRIPT_DIR" "$TARGET_DIR"

# Verify installation
if [ -f "$TARGET_DIR/SKILL.md" ]; then
    echo "✅ Installation successful!"
    echo ""
    echo "The export-conversation skill is now available in Claude Code."
    echo "Usage: /export-conversation [optional-filename]"
    echo ""
    echo "Examples:"
    echo "  /export-conversation                    # Auto-timestamped filename"
    echo "  /export-conversation my-session         # Custom filename"
    echo "  /export-conversation docs/session       # Custom path"
    echo ""
    echo "📖 See README.md for full documentation"
else
    echo "❌ Installation failed - SKILL.md not found"
    exit 1
fi
