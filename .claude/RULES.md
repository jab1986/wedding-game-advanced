# Wedding Game Development Rules

## Core Principles
- **Test First**: Write tests before implementation
- **State Machines**: Use for all complex behaviors
- **Performance**: Target 60 FPS consistently
- **Code Quality**: No debug prints in commits

## Godot-Specific Rules

### Scene Organization
- One scene per game object/UI element
- Use scene inheritance for variants
- Keep scenes under 100 nodes
- Separate logic from presentation

### GDScript Standards
```gdscript
# Good
func take_damage(amount: int) -> void:
    health -= amount
    if health <= 0:
        die()

# Bad
func dmg(x):
    h = h - x
    if h <= 0: die()
```

### Signal Usage
- Prefer signals over direct coupling
- Name signals as past-tense events
- Document signal parameters

### Resource Management
- Use resource files for data
- Preload frequently used resources
- Free unused resources explicitly

## Testing Rules

### GUT Integration
- Test file naming: `test_*.gd`
- One test class per game class
- Use parameterized tests for variants
- Mock external dependencies

### Test Structure
```gdscript
extends GutTest

func before_each():
    # Setup
    pass

func test_feature_behavior():
    # Arrange
    var system = preload("res://scripts/system.gd").new()
    
    # Act
    var result = system.process()
    
    # Assert
    assert_eq(result, expected)

func after_each():
    # Cleanup
    pass
```

## Performance Rules

### Optimization Priorities
1. Algorithm complexity
2. Draw call reduction
3. Physics optimization
4. Memory management

### Profiling Requirements
- Profile before optimizing
- Document performance improvements
- Set performance budgets

## Git Workflow

### Branch Strategy
- `main`: Production ready
- `develop`: Integration branch
- `feature/*`: New features
- `fix/*`: Bug fixes

### Commit Standards
```
type(scope): description

- feat: new feature
- fix: bug fix
- perf: performance improvement
- test: test additions
- docs: documentation
```

## Security Rules

### Asset Protection
- No copyrighted assets
- Use placeholder art initially
- Document asset sources

### Code Security
- No hardcoded secrets
- Validate all input
- Sanitize save game data

## Documentation Requirements

### Code Documentation
- Document public APIs
- Explain complex algorithms
- Add usage examples

### Project Documentation
- Keep README updated
- Document setup steps
- Maintain changelog