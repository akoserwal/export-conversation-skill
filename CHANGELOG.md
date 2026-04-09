# Changelog

All notable changes to the export-conversation skill will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2026-04-08

### Added
- ✨ Comprehensive Mermaid diagram support with 7 diagram types
- 📊 Visual Overview section in exports
- 🎨 Architecture diagrams (`graph TD/LR`)
- 🔄 Sequence diagrams (`sequenceDiagram`)
- 📈 Flowcharts (`flowchart`)
- 🏗️ Class diagrams (`classDiagram`)
- 🔀 State diagrams (`stateDiagram-v2`)
- 🌿 Git graphs (`gitGraph`)
- 🗄️ ER diagrams (`erDiagram`)
- 📋 Diagram quality standards and guidelines
- 🎯 Smart diagram inclusion based on conversation content
- 📝 Enhanced conversation review checklist

### Changed
- 📖 Updated export format to include Visual Overview section
- 🎨 Improved export template structure
- 📊 Enhanced confirmation message to include diagram count

### Documentation
- 📚 Added detailed diagram type selection guide
- 📖 Documented when to create/skip diagrams
- ✍️ Added diagram quality standards
- 📝 Expanded examples with architecture session

## [1.0.0] - 2026-04-08

### Added
- 🎉 Initial release of export-conversation skill
- 📝 Basic conversation export functionality
- 📊 Session statistics tracking
- 📁 File change logging with action types
- 🕐 Automatic timestamp generation for filenames
- 🎯 Custom filename and path support
- 🔒 Sensitive data sanitization (API keys, passwords)
- 📋 Conversation summary generation
- 🔧 Tool usage tracking (Bash, Read, Write, Edit, etc.)
- 📖 Comprehensive documentation in SKILL.md
- ✅ Edge case handling (empty conversations, failed tools)
- 🎨 Well-formatted markdown output
- 📈 Chronological message ordering
- 💬 User and assistant message capture
- 🗂️ Support for directory paths in output

### Documentation
- 📚 Created initial SKILL.md with complete instructions
- 📖 Added usage examples and guidelines
- 📝 Documented five-step execution process
- ✍️ Included export format template

---

## Version History Summary

- **v2.0.0** - Added comprehensive diagram support with Mermaid
- **v1.0.0** - Initial release with core export functionality

## Future Roadmap

### Under Consideration
- 📑 Table of contents generation for long exports
- 🎨 Customizable export templates
- 🔍 Filtering options (by tool type, message type)
- 📤 Additional export formats (PDF, HTML)
- 📊 Enhanced statistics dashboard
- 🔄 Incremental exports (append to existing file)
- 🏷️ Tagging and categorization
- 🔍 Full-text search in exports
- 📎 Attachment support for images/files
- 🌐 Export to common documentation platforms

### Community Requests
- Open an [issue](https://github.com/YOUR_USERNAME/export-conversation-skill/issues) to suggest features!

---

**Note:** This skill follows semantic versioning. Breaking changes will increment the major version.
