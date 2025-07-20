# Claude Code Settings

Shared Claude Code configuration for the development team.

## Usage

### Quick Setup

Use the justfile for easy setup:

```bash
just setup
```

### Manual Setup

Copy files to your Claude Code settings directory:

```bash
# macOS/Linux
cp settings.json ~/.config/claude-code/settings.json
cp -r commands ~/.config/claude-code/

# Windows
cp settings.json %APPDATA%\claude-code\settings.json
cp -r commands %APPDATA%\claude-code\
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

### Environment Variables

Add any shared environment variables to the `env` section as needed.

## Updating

When adding new permissions:
1. Test locally first
2. Update this repo
3. Notify team to pull latest changes
