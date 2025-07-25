# Claude Code Settings

Shared [Claude Code configuration](https://docs.anthropic.com/en/docs/claude-code/settings) for the development team.

## Usage

### Quick Setup

Use the justfile for easy setup:

```bash
just setup
```

### Manual Setup

Copy files to your Claude Code settings directory:

```bash
cp settings.json ~/.config/claude-code/settings.json
cp commands/*.md ~/.config/claude-code/
cp agents/*.md ~/.config/claude-code/
```

## Configuration

### Permissions

The settings file includes pre-approved permissions for common development tasks:

- **Git operations**: All git commands (`git add`, `commit`, `push`, etc.)
- **GitHub CLI**: PR management, issues, checks
- **Build tools**: Swift, Xcode, Cargo, Rust, Just
- **File operations**: Basic file system commands
- **Search tools**: ripgrep, grep, find

### Custom Commands

The `commands/` directory contains shared slash commands:

- `/push_pr` - Automated workflow to create branch, commit changes, and create PR

### Agents

The `agents/` directory contains custom agent definitions:

- `code-quality-enforcer.md` - Agent for linting, fixing issues, formatting, and running tests
- `code-reviewer.md` - Agent for reviewing code quality, best practices, and project standards

### Environment Variables

Add any shared environment variables to the `env` section as needed.

## Updating

When adding new permissions:
1. Test locally first
2. Update this repo
3. Notify team to pull latest changes
