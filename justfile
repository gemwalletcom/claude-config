# Claude Code Settings Management

# Setup Claude Code settings and commands for current user
setup:
    @echo "Setting up Claude Code settings..."
    @if [ -d ~/.claude ]; then \
        echo "⚠️  Existing ~/.claude folder found. Overwrite? [y/N]"; \
        read -r confirm; \
        if [ "$$confirm" = "y" ] || [ "$$confirm" = "Y" ]; then \
            mkdir -p ~/.claude && \
            cp settings.json ~/.claude/settings.json && \
            cp commands/*.md ~/.claude/ && \
            cp agents/*.md ~/.claude/ && \
            echo "✅ Settings, commands, and agents copied to ~/.claude/"; \
        else \
            echo "ℹ️  Keeping existing ~/.claude folder"; \
        fi; \
    else \
        mkdir -p ~/.claude && \
        cp settings.json ~/.claude/settings.json && \
        cp commands/*.md ~/.claude/ && \
        cp agents/*.md ~/.claude/ && \
        echo "✅ Settings, commands, and agents copied to ~/.claude/"; \
    fi

# Show current settings
show:
    @echo "Current settings.json:"
    @cat settings.json | jq .