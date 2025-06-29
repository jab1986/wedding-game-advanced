# Wedding Game Advanced - Claude Code Configuration

## Project Overview
A chaotic wedding-themed adventure game built with Godot 4, featuring Mark (drummer) and Jenny (photographer) navigating through absurd obstacles.

## Tech Stack
- Engine: Godot 4.3
- Language: GDScript
- Architecture: Component-based with state machines
- Key Plugins: Dialogue Manager, Beehave (AI), Phantom Camera

## Development Guidelines

### Code Style
- Use snake_case for variables and functions
- Use PascalCase for class names and nodes
- Keep functions under 20 lines
- Use state machines for complex behaviors
- Prefer signals over direct coupling

### Project Structure
```
wedding-game-advanced/
├── scenes/          # All .tscn files
│   ├── characters/  # Player and NPC scenes
│   ├── levels/      # Level scenes
│   ├── ui/          # UI scenes
│   └── components/  # Reusable components
├── scripts/         # All .gd files
│   ├── characters/  # Character controllers
│   ├── managers/    # Singleton managers
│   ├── systems/     # Game systems
│   └── utils/       # Utility scripts
├── assets/          # All game assets
│   ├── sprites/     # 2D graphics
│   ├── audio/       # Sound effects and music
│   ├── fonts/       # Font files
│   └── shaders/     # Visual effects
├── resources/       # Godot resource files
└── addons/          # External plugins
```

### Key Systems
1. **Character System**: State-based character controllers with switching mechanic
2. **Combat System**: Hitbox-based combat with combo system
3. **Level System**: Scene-based progression with checkpoints
4. **Dialogue System**: Branching dialogue with character portraits
5. **Save System**: JSON-based save/load functionality

### Development Commands
- Test game: `F5` in Godot editor
- Debug mode: `F1` (invincibility), `F2` (level skip), `F3` (resource reload)
- Performance monitor: `F4`

### Common Tasks
- Adding new enemy: Create scene in `scenes/characters/enemies/`, inherit from `BaseEnemy`
- Adding new level: Create scene in `scenes/levels/`, add to `LevelManager` progression
- Adding dialogue: Use Dialogue Manager addon, store in `resources/dialogues/`

### Performance Guidelines
- Keep particle count under 100 per emitter
- Use object pooling for projectiles and effects
- Optimize sprites to power-of-2 dimensions
- Use LOD system for complex backgrounds

### Testing Approach
- Unit tests for game systems in `tests/`
- Integration tests for level progression
- Performance benchmarks for particle effects
- Playtesting checklist in `docs/playtesting.md`