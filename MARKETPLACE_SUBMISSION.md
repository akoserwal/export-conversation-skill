# Marketplace Submission Guide

This document contains information for submitting the export-conversation plugin to the official Claude Code marketplace.

## Pre-Submission Checklist

Before submitting to the marketplace, ensure:

- ✅ Plugin structure follows official requirements
- ✅ `.claude-plugin/plugin.json` contains all required metadata
- ✅ Skills are in `skills/` directory at plugin root
- ✅ `README.md` provides clear installation and usage instructions
- ✅ `LICENSE` file is included (MIT)
- ✅ Version follows semantic versioning (currently 2.0.0)
- ✅ Plugin has been tested locally with `--plugin-dir`
- ✅ All examples in documentation use correct namespaced skill names
- ✅ Repository is public and accessible
- ✅ No sensitive information (API keys, credentials) in files

## Plugin Structure

```
export-conversation-skill/
├── .claude-plugin/
│   └── plugin.json          # Plugin manifest (REQUIRED)
├── skills/
│   └── export/
│       └── SKILL.md         # Export skill definition
├── examples/                # Example exports
│   ├── simple-export.md
│   ├── with-diagrams.md
│   └── architecture-session.md
├── README.md               # Main documentation
├── LICENSE                 # MIT License
├── CHANGELOG.md           # Version history
├── CONTRIBUTING.md        # Contribution guidelines
├── QUICKSTART.md         # Quick start guide
├── .gitignore            # Git ignore rules
└── install.sh            # Installation script

```

## Metadata in plugin.json

```json
{
  "name": "export-conversation",
  "description": "Export Claude Code conversation sessions to beautifully formatted markdown files with diagrams, statistics, and full conversation history",
  "version": "2.0.0",
  "author": {
    "name": "Export Conversation Contributors"
  },
  "homepage": "https://github.com/YOUR_USERNAME/export-conversation-skill",
  "repository": {
    "type": "git",
    "url": "https://github.com/YOUR_USERNAME/export-conversation-skill.git"
  },
  "license": "MIT",
  "keywords": [
    "export",
    "conversation",
    "documentation",
    "markdown",
    "diagrams",
    "mermaid",
    "session",
    "history",
    "archive"
  ]
}
```

## Skill Naming Convention

**Important:** Plugin skills are namespaced to prevent conflicts.

- Plugin name: `export-conversation`
- Skill folder: `skills/export/`
- Invocation: `/export-conversation:export`

The namespace (`export-conversation`) comes from the `name` field in `plugin.json`.

## Testing Before Submission

### 1. Test locally with --plugin-dir

```bash
claude --plugin-dir ./export-conversation-skill
```

### 2. Verify skill appears in help

```bash
/help
```

Look for `/export-conversation:export` in the output.

### 3. Test all usage patterns

```bash
# Auto-timestamped
/export-conversation:export

# Custom filename
/export-conversation:export test-export

# Custom path
/export-conversation:export test/session-export
```

### 4. Test reload

```bash
/reload-plugins
```

Skill should remain available after reload.

### 5. Test with architecture discussions

Have a conversation involving code architecture or diagrams, then export to verify diagram generation works.

## Submission Process

### Option 1: Submit via Claude.ai

1. Visit [claude.ai/settings/plugins/submit](https://claude.ai/settings/plugins/submit)
2. Fill out the submission form
3. Provide repository URL
4. Wait for review

### Option 2: Submit via Console

1. Visit [platform.claude.com/plugins/submit](https://platform.claude.com/plugins/submit)
2. Complete the submission form
3. Provide repository URL
4. Wait for review

## Repository Requirements

Before submitting, ensure your GitHub repository:

1. **Is public** - Private repositories cannot be submitted
2. **Has a clear README** - With installation and usage instructions
3. **Includes LICENSE file** - MIT license included
4. **Has release tags** - Tag version 2.0.0 before submission
5. **Contains examples** - Show users what to expect

### Creating a release tag

```bash
git tag -a v2.0.0 -m "Release version 2.0.0 with diagram support"
git push origin v2.0.0
```

## Post-Submission

After submission:

1. **Monitor for feedback** - Check email and submission portal
2. **Respond to review comments** - Address any requested changes
3. **Update version** - Increment version for any changes
4. **Tag new releases** - Create tags for approved versions

## Support and Maintenance

After marketplace approval:

1. **Monitor issues** - Respond to user bug reports
2. **Accept PRs** - Review and merge community contributions
3. **Release updates** - Follow semantic versioning for releases
4. **Update documentation** - Keep README current with new features

## Version Guidelines

Follow semantic versioning (MAJOR.MINOR.PATCH):

- **MAJOR** (X.0.0) - Breaking changes, incompatible API changes
- **MINOR** (x.X.0) - New features, backwards compatible
- **PATCH** (x.x.X) - Bug fixes, backwards compatible

Current version: **2.0.0**
- v1.0.0 - Initial release
- v2.0.0 - Added diagram support (major feature addition)

## Common Submission Issues

### Issue: "Plugin structure invalid"
**Solution:** Ensure `.claude-plugin/plugin.json` exists and skills are in `skills/` at root

### Issue: "Repository not accessible"
**Solution:** Make repository public and verify URL

### Issue: "Missing required metadata"
**Solution:** Check `plugin.json` has name, description, version fields

### Issue: "Skill not loading"
**Solution:** Test with `--plugin-dir` flag first, check SKILL.md frontmatter

### Issue: "Namespace conflicts"
**Solution:** Ensure plugin name in `plugin.json` is unique

## Contact for Submission Help

- 📧 Check Claude Code documentation
- 💬 Community discussions
- 🐛 Report issues in repository

## Final Checklist Before Submitting

- [ ] Repository is public on GitHub
- [ ] All documentation updated with correct namespace
- [ ] Version tagged (v2.0.0)
- [ ] Tested locally with `--plugin-dir`
- [ ] LICENSE file present
- [ ] README has clear instructions
- [ ] Examples demonstrate key features
- [ ] No sensitive data in repository
- [ ] `plugin.json` has all required fields
- [ ] Skills tested and working
- [ ] CHANGELOG updated
- [ ] Before submitting, replace YOUR_USERNAME in URLs with actual username

---

**Ready to submit!** Visit one of the submission portals above to get started.
