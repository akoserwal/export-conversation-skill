#!/bin/bash

# Installation script for export-conversation Claude Code plugin
# Usage: ./install.sh

set -e

echo "🚀 Installing export-conversation plugin..."

# Define paths
PLUGIN_NAME="export-conversation"
CLAUDE_PLUGINS_DIR="$HOME/.claude/plugins"
TARGET_DIR="$CLAUDE_PLUGINS_DIR/$PLUGIN_NAME"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create plugins directory if it doesn't exist
if [ ! -d "$CLAUDE_PLUGINS_DIR" ]; then
    echo "📁 Creating Claude plugins directory..."
    mkdir -p "$CLAUDE_PLUGINS_DIR"
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
if [ -f "$TARGET_DIR/.claude-plugin/plugin.json" ]; then
    echo "✅ Installation successful!"
    echo ""
    echo "The export-conversation plugin is now available in Claude Code."
    echo "Usage: /export-conversation:export [optional-filename]"
    echo ""
    echo "Examples:"
    echo "  /export-conversation:export                    # Auto-timestamped filename"
    echo "  /export-conversation:export my-session         # Custom filename"
    echo "  /export-conversation:export docs/session       # Custom path"
    echo ""
    echo "Run 'claude' to start a new session, or /reload-plugins in an existing session."
    echo "📖 See README.md for full documentation"
else
    echo "❌ Installation failed - plugin.json not found"
    exit 1
fi
