# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository contains shared Claude Code settings and commands for development teams. It includes:
- `settings.json` - Claude Code permissions and environment variables
- `commands/` - Custom slash commands (like `/push_pr`)
- `justfile` - Automation for setup and configuration

## Common Commands

### Setup and Configuration
- `just setup` - Install settings and commands to ~/.claude/ with confirmation prompts
- `just show` - Display current settings.json with formatted JSON

### Development Workflow
Since this is a configuration repository, the main development tasks involve:
- Editing `settings.json` to add/remove permissions
- Adding new slash commands in `commands/` directory as `.md` files
- Testing setup process with `just setup`

## Architecture

### Settings Structure
The `settings.json` follows Claude Code's configuration format:
- `permissions.allow` - Array of allowed tool patterns (uses wildcard matching like `Bash(git:*)`)
- `permissions.deny` - Array of denied tools (currently empty)
- `env` - Environment variables (includes `CLAUDE_CODE_ENABLE_TELEMETRY: false`)

### Commands Directory
Custom slash commands are stored as `.md` files in `commands/` with:
- YAML frontmatter for metadata (description, usage, examples)
- Markdown content with implementation details
- Special `$ARGUMENTS` variable for parameter handling

### Setup Process
The justfile copies files to `~/.claude/` (not the standard `~/.config/claude-code/`):
- `settings.json` → `~/.claude/settings.json`
- `commands/*.md` → `~/.claude/` (flattened, not in subdirectory)

## Key Patterns

When adding permissions, use broad patterns rather than specific commands:
- Prefer `Bash(git:*)` over individual `Bash(git add:*)`, `Bash(git commit:*)`, etc.
- Group related tools (e.g., all GitHub CLI under `Bash(gh:*)`)

When adding custom commands, follow the existing `/push_pr` pattern with proper YAML frontmatter and detailed implementation sections.