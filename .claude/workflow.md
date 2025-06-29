# Wedding Game Advanced - Claude Code Workflow

## Quick Start

### 1. Initialize Project Context
```bash
# Load game design and context
/context-prime --project wedding-game
/load docs/game-design.md

# Enable MCP servers
/mcp --enable context7 sequential magic
```

### 2. Development Flow

#### Feature Development
```bash
# Start new feature
/wedding-flow character-switching

# This runs:
1. /wedding-test character_switching
2. /state-machine CharacterManager "MARK,JENNY,SWITCHING"
3. /gut test_character_switching
4. /profile scenes/test_level.tscn
5. /wedding-commit feat "Add character switching system"
```

#### Testing Workflow
```bash
# Create test first (TDD)
/gut-create CharacterSwitching

# Run specific test
/gut test_character_switching

# Run all tests
/gut

# Check coverage
/gut --coverage
```

#### Scene Development
```bash
# Analyze existing scene
/scene analyze scenes/levels/wedding_venue.tscn

# Create new scene with setup
/scene create boss_arena
```

## Common Tasks

### Character Implementation
```bash
# Mark's abilities
/mark
/state-machine MarkController "IDLE,RUNNING,JUMPING,ATTACKING,DRUMMING"

# Jenny's abilities  
/jenny
/state-machine JennyController "IDLE,RUNNING,JUMPING,SHOOTING,FOCUSING"
```

### Boss Development
```bash
# Generate boss template
/boss AcidsJoe 3

# Implement phases
/persona:game_designer
/design --boss-pattern "psychedelic attacks"
```

### Performance Optimization
```bash
# Profile current scene
/profile current

# Analyze specific system
/profile particles 10.0

# Get optimization suggestions
/persona:godot_expert
/optimize --target 60fps
```

### Level Design
```bash
# Switch to level design mode
/persona:level_designer

# Create level progression
/level-flow tutorial "movement,jumping,combat,switching"
```

## Debugging

### Common Issues
```bash
# Null reference errors
/debug null-ref CharacterManager.gd:45

# Performance drops
/profile --bottleneck
/analyze --performance particles

# State machine issues
/debug-state CharacterController current_state
```

## Git Workflow

### Daily Development
```bash
# Start day
git pull
/gut  # Run all tests

# Feature branch
git checkout -b feature/character-abilities

# Commit with convention
/wedding-commit feat "Add Jenny's camera flash ability"

# End day
/gut  # Ensure tests pass
git push
```

## MCP Server Usage

### Godot Documentation
```bash
# Look up API
/mcp:context7 --lookup AnimationPlayer

# Search patterns
/mcp:context7 --search "state machine implementation"
```

### Complex Problem Solving
```bash
# Architecture decisions
/mcp:sequential --think "multiplayer architecture for wedding game"

# Performance optimization
/mcp:sequential --optimize "particle system with 1000 objects"
```

### UI Generation
```bash
# Create UI elements
/mcp:magic --create "wedding themed health bar"
/mcp:magic --design "pause menu with options"
```

## Tips and Tricks

1. **Use Personas**: Switch personas based on task
   - `/persona:godot_expert` for technical implementation
   - `/persona:game_designer` for gameplay decisions
   - `/persona:tech_artist` for visual polish

2. **Batch Operations**: Run multiple tests/profiles together
   ```bash
   /gut && /profile && /quality-check
   ```

3. **Quick Shortcuts**: Use aliases
   - `/t` instead of `/gut`
   - `/wf` instead of `/wedding-flow`
   - `/wc` instead of `/wedding-commit`

4. **Auto-triggers**: File patterns trigger commands
   - Saving `test_*.gd` auto-runs that test
   - Opening `*.tscn` auto-analyzes the scene

5. **Context Awareness**: Claude remembers your session
   - Recent file edits
   - Test results
   - Performance metrics