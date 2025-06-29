# Claude Code Workflow Commands for Wedding Game

## Development Workflow Commands

### Phase 1: Initial Setup
```bash
# Initialize Claude Code with context
/context-prime --project wedding-game
/load-llms-txt docs/game-design.md
/wedding_context --initialize

# Configure MCP servers
/mcp --enable context7 sequential magic
/mcp-config --context7-url https://docs.godotengine.org
```

### Phase 2: Test-Driven Development

#### Feature Planning
```bash
# Design new feature with architect persona
/design --persona-architect --feature "ceremony system"
/task-breakdown --epic "wedding ceremony"

# Generate task list
/todo --generate "ceremony system implementation"
```

#### Test First Approach
```bash
# Generate test structure
/test --tdd --coverage "CeremonyManager"
/gut_generate_test src/wedding/ceremony_manager.gd

# Create failing test
/create-test --failing --for "ceremony_start_sequence"
```

#### Implementation
```bash
# Build feature with appropriate persona
/build --feature ceremony --persona-architect
/optimize --performance --token-efficient

# Implement with state machine
/implement --pattern state-machine --class CeremonyManager
```

#### Quality Assurance
```bash
# Run quality checks
/check --quality --persona-qa
/analyze --architecture --depth expert

# Run tests
/run-tests --gut test_ceremony_manager.gd
/coverage --report
```

### Phase 3: Integration & Polish

#### Scene Integration
```bash
# Analyze scene structure
/scene_analysis scenes/wedding/ceremony.tscn
/check-signals --scene ceremony

# Debug issues
/troubleshoot --prod --five-whys
/debug --breakpoint "ceremony_start"
```

#### Documentation
```bash
# Generate comprehensive docs
/create-docs --comprehensive
/api-docs --class CeremonyManager

# Create visual documentation
/mermaid --architecture "Wedding Game Flow"
/mermaid --sequence "Character Switch System"

# Update changelog
/add-to-changelog --version 1.0
/generate-release-notes
```

## Persona-Specific Commands

### Architect Persona
```bash
/persona:architect
/design --system "level progression"
/analyze --coupling --suggest-refactor
/pattern --recommend "event system"
```

### Frontend Persona
```bash
/persona:frontend
/ui --design "pause menu"
/animation --create "character transition"
/responsive --check scenes/ui/
```

### QA Persona
```bash
/persona:qa
/test --edge-cases "character switching"
/fuzz --input-system
/performance --profile "particle effects"
```

## MCP Server Usage

### Context7 (Godot Docs)
```bash
# Lookup Godot documentation
/mcp:context7 --lookup "AnimationPlayer"
/mcp:context7 --search "state machine pattern"
/godot-docs --topic "signals best practices"
```

### Sequential (Complex Logic)
```bash
# Complex problem solving
/mcp:sequential --think "optimize collision detection"
/mcp:sequential --design "save system architecture"
/think-hard --problem "frame rate drops during boss fight"
```

### Magic (UI Generation)
```bash
# Generate UI components
/mcp:magic --create "dialogue box with portraits"
/mcp:magic --design "retro game menu"
/ui-component --style "16-bit" --type "health bar"
```

## Automation Scripts

### Daily Development Flow
```bash
# Morning setup
/morning-setup --pull --tests --context-refresh

# Feature development
/feature-flow --tdd "new_enemy_type"

# End of day
/eod --commit --push --update-todos
```

### CI/CD Commands
```bash
# Pre-commit checks
/pre-commit --lint --test --quality

# Build and deploy
/build --platform linux --optimize
/deploy --channel beta --version 0.9.0
```

## Debugging Commands
```bash
# Performance analysis
/profile --scene "boss_battle"
/memory --analyze --suggest-optimizations

# Bug investigation
/bug-hunt --symptoms "character stuck in wall"
/trace --error "null reference in enemy AI"
```

## Project Management
```bash
# Sprint planning
/sprint --plan --duration 2w
/estimate --feature "multiplayer support"

# Progress tracking
/progress --visual --epic "Chapter 1"
/burndown --current-sprint
```