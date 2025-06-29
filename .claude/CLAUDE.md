# Wedding Game Advanced - Claude Code Configuration

## Project Overview
A chaotic wedding-themed adventure game built in Godot 4.3+ featuring dual character control (Mark & Jenny), state machine-based gameplay, and dynamic AI-driven interactions.

## Project Context
- **Engine**: Godot 4.3
- **Language**: GDScript
- **Testing**: GUT (Godot Unit Test)
- **Architecture**: Modular scene-based with signal communication
- **Art Style**: 16-bit pixel art with modern effects

## Development Commands

### Core Workflow Commands
- `./scripts/setup.sh` - Initial project setup with GUT configuration
- `./scripts/tdd_workflow.sh <feature>` - Test-driven development cycle
- `./scripts/quality_check.sh` - Code quality assurance checks
- `godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd` - Run all tests

### Key Testing Commands
- `godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd -gtest=<test_file>` - Run specific test
- `godot --headless -d -s --path . res://addons/gut/gut_cmdln.gd -gdir=tests/unit` - Run unit tests only

## Project Structure

```
wedding-game-advanced/
├── .claude/                    # Claude Code configuration
│   ├── CLAUDE.md              # This file
│   ├── commands/              # Custom slash commands
│   ├── personas/              # Custom personas
│   └── shared/                # Shared templates & context
├── scenes/                    # Godot scenes
├── scripts/                   # GDScript files
│   ├── claude_integration.gd  # Claude API integration helper
│   ├── setup.sh              # Project setup script
│   ├── tdd_workflow.sh        # TDD development workflow
│   └── quality_check.sh       # Quality assurance checks
├── tests/                     # GUT test files
├── docs/                      # Documentation
│   ├── game-design.md         # Complete game design document
│   ├── development_workflow.md # Development process guide
│   └── full project plan.txt  # Comprehensive implementation plan
└── assets/                    # Game assets
```

## Key Game Components

### Characters
- **Mark (Drummer)**: Melee fighter with rhythm-based attacks
- **Jenny (Photographer)**: Ranged attacker with utility skills
- Character switching with unique abilities and combo potential

### Game Mechanics
- State machine-based character control
- Signal-based inter-scene communication
- Modular scene architecture with loose coupling
- Dynamic AI-driven dialogue and interactions

### Level Progression
1. The Venue (tutorial)
2. Preparation Chaos
3. Guest List Gone Wrong
4. Ceremony Interruption
5. Reception Rumble
6. Honeymoon Highway
7. Final Showdown (Psychedelic boss "Acids Joe")

## Development Guidelines

### Code Style
- Use snake_case for files, variables, and functions
- Follow Godot naming conventions
- Prefer composition over inheritance
- Use signals for loose coupling between scenes

### Testing Strategy
- Test-driven development with GUT
- Unit tests for game logic
- Integration tests for scene interactions
- Performance tests for critical systems

### Quality Standards
- No debug print statements in production code
- Resolve all TODO/FIXME comments before commits
- Keep functions under 20 lines when possible
- Maintain test coverage for core systems

## Performance Targets
- 60 FPS on moderate hardware
- Sub-100ms input latency
- 2-second level load times
- Efficient memory usage with proper cleanup

## Git Workflow
- Main branch: `main`
- Feature branches for new development
- Conventional commits for clear history
- Automated CI/CD with GitHub Actions

## Important Files to Reference
- `docs/game-design.md` - Complete game design and mechanics
- `docs/development_workflow.md` - Detailed development process
- `docs/full project plan.txt` - Comprehensive implementation plan
- `scripts/claude_integration.gd` - Claude API integration utilities

## Context Loading
When working on this project, always reference:
1. Game design document for feature requirements
2. Development workflow for process guidance
3. Existing test patterns in `tests/` directory
4. Scene structure patterns in `scenes/` directory

## Notes
- This is a defensive game development project focused on creating entertaining content
- All AI integrations are for enhancing gameplay experience
- Focus on modular, testable, and maintainable code architecture