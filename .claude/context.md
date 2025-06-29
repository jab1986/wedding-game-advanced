# Wedding Game Context

## Quick Reference

### Current Focus
Building a wedding-themed action-adventure platformer with Godot 4.3

### Key Features
- Dual protagonist system (Mark & Jenny)
- Character switching mechanics
- State-based combat system
- Humorous narrative with dialogue system
- Boss battles including psychedelic final boss

### Technical Stack
- **Engine**: Godot 4.3
- **Language**: GDScript
- **Testing**: GUT (Godot Unit Testing)
- **Version Control**: Git
- **CI/CD**: GitHub Actions

### Development Patterns
- State machines for character/enemy behavior
- Component-based architecture
- Signal-based communication
- Test-driven development

### Project Structure
```
wedding-game-advanced/
├── scenes/          # Scene files (.tscn)
├── scripts/         # GDScript files (.gd)
├── assets/          # Art, audio, fonts
├── resources/       # Godot resources
├── tests/           # GUT test files
├── docs/            # Documentation
└── .claude/         # Claude Code config
```

### Active Development Tasks
See todo list for current priorities

### Key Commands
- Run tests: `godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd`
- Quality check: `./scripts/quality_check.sh`
- TDD workflow: `./scripts/tdd_workflow.sh <feature>`

### Performance Targets
- 60 FPS consistent
- <2 second level loads
- <100ms input latency

### Code Style
- snake_case for variables/functions
- PascalCase for classes/nodes
- Signals for decoupling
- State machines for complex behavior