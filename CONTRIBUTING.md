# Contributing to Export Conversation Skill

Thank you for your interest in contributing! This document provides guidelines for contributing to the export-conversation skill.

## Development Setup

1. **Fork and clone the repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/export-conversation-skill.git
   cd export-conversation-skill
   ```

2. **Create a development symlink:**
   ```bash
   # Link to your local development directory
   ln -sf $(pwd) ~/.claude/skills/export-conversation
   ```

3. **Verify the installation:**
   ```bash
   ls -l ~/.claude/skills/export-conversation
   ```

## Making Changes

### File Structure

The skill consists of a single file:
- `SKILL.md` - Contains all skill logic, documentation, and instructions

### Testing Your Changes

1. **Edit `SKILL.md`:**
   ```bash
   # Use your preferred editor
   vim SKILL.md
   # or
   code SKILL.md
   ```

2. **Test in Claude Code:**
   - Open a Claude Code session
   - Run `/export-conversation test-output`
   - Verify the export works as expected
   - Check that diagrams render correctly (if applicable)

3. **Test edge cases:**
   - Empty conversations
   - Conversations with no code changes
   - Conversations with many diagrams
   - Different output paths

### Code Style

When editing `SKILL.md`:

**Markdown:**
- Use ATX-style headers (`#` prefix)
- Indent code blocks with 4 spaces or triple backticks
- Use inline code for commands and file paths

**Instructions:**
- Be specific and actionable
- Use clear step-by-step instructions
- Include examples where helpful
- Maintain consistent formatting

**Mermaid Diagrams:**
- Keep diagrams focused on one concept
- Use descriptive node labels
- Show clear directional flow
- Add comments for complex relationships

## Pull Request Process

1. **Create a feature branch:**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes:**
   - Edit files
   - Test thoroughly
   - Add examples if introducing new features

3. **Commit with clear messages:**
   ```bash
   git commit -m "feat: Add support for X"
   ```
   
   Use conventional commit format:
   - `feat:` - New features
   - `fix:` - Bug fixes
   - `docs:` - Documentation changes
   - `refactor:` - Code refactoring
   - `test:` - Test updates
   - `chore:` - Maintenance tasks

4. **Push to your fork:**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Open a Pull Request:**
   - Provide a clear description
   - Reference any related issues
   - Include screenshots for visual changes
   - Add example exports if relevant

## Areas for Contribution

### High Priority

- 🐛 **Bug fixes** - Fix issues with exports or diagram generation
- 📖 **Documentation** - Improve clarity, add examples, fix typos
- ✨ **New diagram types** - Add support for additional Mermaid diagram types
- 🎯 **Better diagram detection** - Improve logic for when to generate diagrams

### Enhancement Ideas

- **Table of Contents** - Auto-generate TOC for long exports
- **Export Templates** - Allow users to customize export format
- **Filtering** - Option to filter out certain types of messages
- **Search** - Add keyword search in exports
- **Stats Dashboard** - More detailed session analytics
- **Export Formats** - Support for PDF, HTML, or other formats
- **Compression** - Option to compress large exports
- **Diff Export** - Export showing before/after code changes

### What We're Looking For

✅ **Do:**
- Write clear, concise code
- Add examples for new features
- Test thoroughly before submitting
- Update documentation
- Follow existing patterns

❌ **Don't:**
- Break existing functionality
- Add dependencies (skill should be self-contained)
- Make massive refactors without discussion
- Ignore code style guidelines

## Reporting Issues

### Before Reporting

1. **Search existing issues** - Your issue may already be reported
2. **Test with latest version** - Ensure you're using the current release
3. **Verify installation** - Check that the skill is properly installed

### Creating an Issue

Include:
- **Clear title** - Summarize the issue
- **Description** - What happened vs. what you expected
- **Steps to reproduce** - How to trigger the issue
- **Environment** - Claude Code version, OS, etc.
- **Example** - Minimal conversation that reproduces the issue
- **Screenshots** - If applicable

### Issue Template

```markdown
**Describe the bug**
A clear description of what the bug is.

**To Reproduce**
1. Run `/export-conversation`
2. See error

**Expected behavior**
What you expected to happen.

**Environment:**
- OS: [e.g., macOS 14.0]
- Claude Code version: [e.g., 1.0.0]
- Skill version: [e.g., 2.0.0]

**Additional context**
Any other information about the problem.
```

## Feature Requests

We welcome feature requests! Please:

1. **Check existing requests** - Vote on existing issues instead of duplicating
2. **Describe the use case** - Why is this feature valuable?
3. **Propose a solution** - How might it work?
4. **Consider alternatives** - Are there other approaches?

### Feature Request Template

```markdown
**Is your feature request related to a problem?**
A clear description of the problem.

**Describe the solution you'd like**
What you want to happen.

**Describe alternatives you've considered**
Other approaches you've thought about.

**Additional context**
Screenshots, mockups, examples, etc.
```

## Code of Conduct

### Our Standards

- Be respectful and inclusive
- Accept constructive criticism
- Focus on what's best for the community
- Show empathy toward others

### Unacceptable Behavior

- Harassment or discriminatory language
- Trolling or insulting comments
- Personal or political attacks
- Publishing private information

## Questions?

- 💬 Open a [Discussion](https://github.com/YOUR_USERNAME/export-conversation-skill/discussions)
- 🐛 Report [Issues](https://github.com/YOUR_USERNAME/export-conversation-skill/issues)
- 📧 Contact maintainers (see README)

## Recognition

Contributors will be recognized in:
- Release notes
- Contributors section
- Project documentation

Thank you for contributing to make this skill better! 🎉
