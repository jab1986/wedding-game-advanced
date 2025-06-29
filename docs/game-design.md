# Wedding Game Advanced - Game Design Document

## Game Overview
**Title**: Wedding Chaos: Mark & Jenny's Big Day
**Genre**: Action-Adventure Platformer
**Platform**: PC, Web
**Engine**: Godot 4.3
**Art Style**: 16-bit pixel art with modern effects

## Core Concept
A chaotic wedding-themed adventure where players control Mark (drummer) and Jenny (photographer) as they navigate through increasingly absurd obstacles on their wedding day. The game combines platforming, combat, and puzzle-solving with a humorous narrative.

## Characters

### Mark (The Drummer)
- **Role**: Melee fighter with rhythm-based attacks
- **Abilities**:
  - Drumstick Combo: Quick 3-hit melee combo
  - Power Chord: AOE stun using drums
  - Rhythm Rush: Temporary speed boost
- **Personality**: Laid-back, protective, musical

### Jenny (The Photographer)
- **Role**: Ranged attacker with utility skills
- **Abilities**:
  - Flash Stun: Blinds enemies temporarily
  - Telephoto Shot: Long-range projectile
  - Picture Perfect: Freeze frame dodge
- **Personality**: Energetic, creative, perfectionist

## Game Mechanics

### Character Switching
- Instant swap between Mark and Jenny
- Each character has unique abilities
- Some puzzles require specific character abilities
- Combo potential when switching mid-combat

### Combat System
- **Melee Combat**: Combo-based with timing elements
- **Ranged Combat**: Projectile system with ammo management
- **Special Moves**: Character-specific ultimate abilities
- **Enemy Types**: Wedding crashers, jealous exes, chaos spirits

### Level Progression
1. **The Venue** - Tutorial level, learn basic controls
2. **Preparation Chaos** - Kitchen disasters and wardrobe malfunctions
3. **Guest List Gone Wrong** - Uninvited guests cause havoc
4. **Ceremony Interruption** - Mid-ceremony boss fight
5. **Reception Rumble** - Dance floor combat
6. **Honeymoon Highway** - Vehicle escape sequence
7. **Final Showdown** - Psychedelic boss "Acids Joe"

## Boss Fights

### Mini-Bosses
- **Bridezilla**: Transformed bridesmaid with projectile bouquets
- **Drunk Uncle**: Unpredictable movement patterns
- **Ex-Boyfriend**: Jealousy-powered attacks

### Final Boss: Acids Joe
- **Phase 1**: Psychedelic environment shifts
- **Phase 2**: Reality-warping attacks
- **Phase 3**: Bullet-hell wedding cake barrage

## Game Systems

### Health System
- Shared health pool between characters
- Health pickups: Wedding cake slices
- Checkpoint system at major scenes

### Collectibles
- **Wedding Photos**: Unlock concept art
- **Music Notes**: Unlock soundtrack
- **Love Letters**: Unlock backstory

### Dialogue System
- Character portraits with emotions
- Branching dialogue for humor
- Quick comedic exchanges during gameplay

## Technical Design

### State Machines
- Character states: Idle, Move, Jump, Attack, Hurt, Special
- Enemy AI states: Patrol, Alert, Attack, Retreat
- Game states: Menu, Playing, Paused, Cutscene

### Performance Targets
- 60 FPS on moderate hardware
- Sub-100ms input latency
- 2-second level load times

### Audio Design
- Dynamic music system (calm to chaotic)
- Character-specific sound effects
- Environmental audio for atmosphere

## Art Direction

### Visual Style
- 16-bit inspired pixel art
- Vibrant wedding-themed color palette
- Particle effects for special moves
- Parallax scrolling backgrounds

### UI Design
- Retro-inspired HUD
- Character portraits for dialogue
- Minimalist health/ability indicators

## Development Priorities

### Phase 1: Core Systems
- Character movement and switching
- Basic combat mechanics
- Level loading system

### Phase 2: Content Creation
- Level design and implementation
- Enemy variety and AI
- Boss fight mechanics

### Phase 3: Polish
- Particle effects and visual feedback
- Audio implementation
- Performance optimization

## Success Metrics
- Smooth character switching mechanics
- Engaging combat with variety
- Humorous narrative that lands
- Stable 60 FPS performance
- Memorable boss encounters