# Rage Devil — A Neon Troll Platformer

A minimalist 2D side-scrolling platformer game with 35 levels of intentional trolling, deception, and frustration. Built in React + Vite + Tailwind CSS with synthesized audio.

## Features

### Gameplay
- **35 Levels** across 4 worlds, each introducing new troll mechanics
- **Dark Neon Aesthetic** with cyan, magenta, and yellow accents
- **Synthesized Audio** — no audio files needed, all sounds generated via Web Audio API
- **Touch Controls** with adjustable on-screen D-pad and jump button (mobile/tablet friendly)
- **Global Death Counter** that persists across all levels
- **Level Select Menu** with completion tracking and world organization

### Core Mechanics
- **Control Scrambling**: Keys remap randomly every 5 seconds
- **Falling Platforms**: Collapse when touched
- **Ceiling Spikes**: Drop when player walks underneath
- **Invisible Platforms**: Appear as player approaches (within 150px)
- **Gravity Flip Zones**: Invert player gravity temporarily
- **Runaway Flag**: Escapes when approached, becomes catchable at level edge
- **Reversed Controls**: Left/right/jump are inverted
- **Input Lag Simulation**: Realistic 500ms delays trigger randomly
- **And 13 more unique mechanics...**

## Levels by World

### World 1: The Physics Trolls (Levels 1–5)
Introduction to troll mechanics through physics-based challenges.

### World 2: Visual & Environmental Gaslighting (Levels 6–15)
Control tricks, visual deception, and psychological stress tests.

### World 3: Extreme Geometry & Precision Hell (Levels 16–25)
Complex environmental hazards requiring precise movement and timing.

### World 4: The Ultimate Rage Suite (Levels 26–35)
All previous mechanics combined, culminating in a final gauntlet.

## Controls

### Keyboard
- **Arrow Keys** or **WASD** to move left/right
- **Up Arrow**, **W**, or **Space** to jump

### Touch (Mobile/Tablet)
- **Left/Right** buttons on bottom-left
- **Jump** button on bottom-right
- Adjustable size via settings menu

## How to Play

1. **Start Game**: Click "Play Level 1" or select a specific level
2. **Understand the Troll**: Each level introduces a new unfair mechanic
3. **Learn Through Failure**: Death is expected; the learning happens on the second try
4. **Progress**: Levels unlock as you complete previous ones
5. **Troll Your Friends**: Copy the link and challenge others to beat your death count

## Game Design Philosophy

### Fair Trolling
Every troll mechanic is **achievable but frustrating**:
- Falling platforms look like regular platforms (teach via failure)
- Invisible platforms become visible as you approach (150px radius)
- Reversed controls are displayed on-screen (remove guess-work)
- No impossible jumps (all gaps ≤1.5 tiles)
- No instant-kill hazards without telegraphing

### Escalating Difficulty
- Levels 1–5: Learn core physics trolls
- Levels 6–15: Survive control/perception tricks
- Levels 16–25: Master precision + complex mechanics
- Levels 26–35: Apply everything in extreme combinations

### Respawn Quick Loop
- Death → Respawn at level start in ~260ms
- Global death counter tracks attempts
- Encourages learning through repetition

## Technical Details

### Architecture
- **React** – Component-based UI (menu, overlays, game container)
- **Canvas 2D** – Rendering engine for physics simulation and drawing
- **Vite** – Fast build tooling and dev server
- **Tailwind CSS** – Utility-first styling
- **Web Audio API** – Synthesized SFX and procedural BGM (no external files)
- **localStorage** – Persistent death counter and level completion tracking

### File Structure
```
src/
├── App.tsx                    # Main app component (state management)
├── game/
│   ├── types.ts              # TypeScript interfaces for levels/mechanics
│   ├── levels.ts             # All 35 level definitions
│   ├── audio.ts              # Synthesized audio engine
│   └── GameCanvas.tsx        # Canvas rendering + physics engine
├── components/
│   ├── MainMenu.tsx          # Menu, level select, settings
│   ├── TouchControls.tsx     # On-screen D-pad + jump button
│   └── Overlays.tsx          # Level complete & victory screens
└── index.css                 # Tailwind imports
```

### Build Output
- Single `dist/index.html` file with all code and styles inlined
- No external dependencies after build
- ~267 KB uncompressed, ~80 KB gzipped

## Audio

All audio is **synthesized in real-time** using the Web Audio API:

### SFX
- **Jump**: Two-tone ascending beep
- **Land**: Short triangle wave
- **Death**: Descending sawtooth sweep
- **Coin**: Ascending double beep
- **Fake Coin**: Long descending sweep
- **Flag**: Ascending arpeggio
- **Victory**: Full 5-note chord progression
- **Click**: Short square pulse
- **Buzz**: Low sawtooth tone
- **Teleport**: Sine wave slide

### BGM
- **Looping Chiptune**: Procedurally generated scale-based melody
- Plays continuously in menu and during gameplay
- Can be muted via settings

## Settings

### Mute Toggle
Disables all SFX and BGM (stored in localStorage)

### Touch Control Size
Adjustable scale (0.7x to 1.8x) for on-screen button visibility
Useful for different hand sizes and devices

## Achievements & Milestones

- **Complete Level 1**: Understand the first troll
- **Complete Level 5**: Master key scrambling
- **Complete Level 13**: Dodge the checkpoint trap
- **Complete All 35**: Beat the ultimate gauntlet
- **Low Death Count**: Challenge mode (compete on death counter)
- **Troll a Friend**: Share the link and watch them suffer

## Browser Compatibility

- **Chrome/Edge**: Full support
- **Firefox**: Full support
- **Safari**: Full support (iOS 14+)
- **Mobile Browsers**: Touch controls enabled automatically

## Performance

- **60 FPS** target (limited by requestAnimationFrame)
- **Minimal Draw Calls**: Single canvas, batched rendering
- **No Asset Loading**: All audio synthesized, all graphics drawn
- **Lightweight**: ~267 KB uncompressed for entire game

## Known Intentional Quirks

1. **Level 2**: Invisible platforms; you must explore to find the safe path
2. **Level 8**: Jump makes you go DOWN (reversed gravity for jump only)
3. **Level 13**: Checkpoint sends you back to Level 1 (intentional trap)
4. **Level 19**: First flag is fake; you must complete twice to progress
5. **Level 24**: Platforms vanish after you jump from them
6. **Level 29**: A wall chases you from the left
7. **Level 35**: Everything combines into one final test

## Future Possibilities

- Level editor for custom level creation
- Leaderboard system (global death records)
- Speedrun mode (time-based challenges)
- Co-op ghost mode (see replays of friend attempts)
- Additional worlds (36+ levels)

## Credits

**Rage Devil** — A solo project combining minimalist design with maximalist frustration.

Built with React, Vite, and the Web Audio API. No external assets. Pure troll energy.

---

**Ready to rage?** Start the game and prepare to die. A lot.
