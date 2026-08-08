# Rage Devil — Level Design Guide

## Overview
35 levels across 4 worlds. Each level introduces frustrating but fair troll mechanics.

## Design Principles
- **Visible ≠ Passable**: Traps are visually identical to safe platforms until triggered
- **Achievable but Frustrating**: No impossible jumps, but physics/controls make levels annoying
- **Teach Through Failure**: First encounter is usually a death; second attempt is survivable
- **Escalating Complexity**: Levels build on previous mechanics

---

## WORLD 1: The Physics Trolls (Levels 1-5)

### Level 1: The Basics
**Mechanic**: Falling platforms + Ceiling spikes + Runaway flag
- Falling platforms at tiles 9, 10, 22 (look normal, fall when touched)
- Ceiling spikes trigger when player walks nearby (silent until triggered)
- Flag runs away when approached (forces creative approach)
- **Design**: Teaches core troll mechanic (things aren't what they seem)
- **Passable**: Yes, by learning to move quickly or jump

### Level 2: The Illusion
**Mechanic**: Invisible platforms (visible within 150px, fade beyond)
- Decorative platform section above hides the real path below
- Invisible ground-level corridor is the actual safe route
- Fake coins kill player, real coins are safe
- **Design**: First real "invisible maze" experience
- **Passable**: Yes, by exploring and watching for platform fades

### Level 3: Gravity Chaos
**Mechanic**: Gravity flip zones (4 toggle points)
- Player inverts gravity when crossing thin trigger zones
- Upper platforms become valid when gravity inverted
- Requires learning the gravity flip locations
- **Design**: Mechanical complexity without unfair gaps
- **Passable**: Yes, with experimentation and timing

### Level 4: The Runaway
**Mechanic**: Moving platforms + Runaway flag
- Scattered moving platforms are just there (not required)
- Flag moves away when within 190px (capped at level boundary)
- Eventually flag gets trapped and becomes catchable
- **Design**: Teaches that persistence works
- **Passable**: Yes, circle around the flag

### Level 5: The Ultimate Troll
**Mechanic**: Key scramble (left/right/jump shuffle every 5s) + Gaps
- Controls remap randomly; player can see new mapping
- Small gaps (1 tile) that are jumpable with any control scheme
- Spikes flanking middle section
- **Design**: Confusion + skill test
- **Passable**: Yes, gaps are manageable even with scrambled keys

---

## WORLD 2: Visual & Environmental Gaslighting (Levels 6-15)

### Level 6: Fake UI
**Mechanic**: Fake pop-up overlay (blocks vision briefly)
- Fake "You won a prize!" pop-up appears mid-level
- Purely visual/psychological distraction
- Overhead spikes and floor spikes test awareness
- **Passable**: Yes, ignore the pop-up and keep moving

### Level 7: The Floor is Fake
**Mechanic**: Decorative vs invisible platforms
- Visual platforms above are fake (decorative)
- Real solid path is invisible 8px-thick line below
- Players learn to trust the invisible system
- **Passable**: Yes, drop down through decorative platforms

### Level 8: Reverse Momentum
**Mechanic**: Reversed controls + Reverse jump (down instead of up)
- Left/Right are swapped
- Jump makes you go DOWN instead of UP
- No gaps (player can't jump over them anyway)
- Ceiling spikes require careful movement
- **Design**: Teaches that mechanics can be subverted fairly
- **Passable**: Yes, walk normally, avoid standing under spikes

### Level 9: The Copycat
**Mechanic**: Mirror phantom (reflects player input from opposite side)
- Phantom square mirrors player movements from right edge
- Phantom can be avoided with careful routing
- Spike hazard in middle tests timing
- **Passable**: Yes, stay on left side or time phantom crossings

### Level 10: Lag Simulator
**Mechanic**: 500ms input lag (triggers randomly for ~1.8s)
- Lag makes jumps feel delayed
- Activates unpredictably during gameplay
- Gaps still crossable with patience
- **Design**: Simulates real lag/network issues
- **Passable**: Yes, compensate for delay

### Level 11: The Shrinking Window
**Mechanic**: Viewport crops smaller with each jump
- Black borders appear and expand (max 160px inset)
- Doesn't block level passage, just visibility
- Psychological pressure mounts
- **Passable**: Yes, memorize layout or jump carefully

### Level 12: Bouncy Castles
**Mechanic**: Bouncy platforms (0.85 elasticity reversal)
- Platforms at 8, 9, 24 bounce player upward/outward
- Spikes nearby test bounce timing
- Bounces can be controlled with precise landing
- **Design**: Skill-based mechanic, not RNG
- **Passable**: Yes, use bounces for height or avoid them

### Level 13: Troll Checkpoint
**Mechanic**: Fake checkpoint (resets progress to Level 1)
- Checkpoint flag appears at position 18*TILE
- Reaching it triggers fake "checkpoint saved" and resets
- Forces player to continue without the safety
- **Design**: Meta-troll (subverts player expectations)
- **Passable**: Yes, just ignore checkpoint and finish level

### Level 14: The Sound Barrier
**Mechanic**: Audio stress + visual distraction (buzzer + screen shake)
- Loud buzz sound when triggered
- Screen shakes for ~1.8s
- Purely psychological/sensory overload
- No actual mechanic change
- **Passable**: Yes, mute if needed, keep playing

### Level 15: Schrödinger's Blocks
**Mechanic**: Platforms solid only when NOT holding forward
- Release forward key = platform becomes solid
- Hold forward key = platform becomes passable
- Forces players to stop holding forward mid-jump
- **Design**: Mental puzzle disguised as platformer
- **Passable**: Yes, learn to release key timing

---

## WORLD 3: Extreme Geometry & Precision Hell (Levels 16-25)

### Level 16: The Conveyor Belt
**Mechanic**: Conveyor direction flips every ~2.5s
- Platforms push left (positive direction)
- Direction flips without warning
- Player must not get pushed into spikes
- **Passable**: Yes, jump through or time direction changes

### Level 17: The Maze Runner
**Mechanic**: Low ceiling zone (jump limited to 60px height)
- Entire level confined to 260px ceiling (60px max jump)
- Precision platforming required
- Spike hazard at floor level
- **Design**: Mechanical difficulty through constraints
- **Passable**: Yes, with careful jumps

### Level 18: Sudden Teleports
**Mechanic**: Teleport platforms (land on them = sent back to start)
- Platforms at 12 and 22 in corridor are teleporters
- Avoidable by jumping over or skipping them
- Tests precision and level awareness
- **Passable**: Yes, jump over teleporters

### Level 19: The Fake Ending
**Mechanic**: Second flag is fake (shows "Level Complete" but isn't)
- First flag at normal end location is a trap
- Clicking "Next Level" triggers death sound and respawn
- Real flag appears after, forcing a second run
- **Design**: Subverts victory expectation
- **Passable**: Yes, find the real flag after fake one kills you

### Level 20: Wind Tunnel
**Mechanic**: Constant wind push (force -0.35 to the left)
- Persistent wind from game start
- Pushes player left, must counter with rightward movement
- Gaps and spikes test wind management
- **Passable**: Yes, build momentum against wind

### Level 21: Bullet Hell
**Mechanic**: Turrets fire projectiles (spawns every 1.4s from corners)
- 4 turrets (top-left, top-right, bottom-left, bottom-right corners)
- Bullets travel toward player at 2.1 px/frame
- Dodgeable with careful positioning
- **Design**: Pattern-based dodging (not full bullet hell)
- **Passable**: Yes, keep moving and dodging

### Level 22: Size Matters
**Mechanic**: Random size growth (1x → 1.9x, duration ~2.2s)
- Player square expands to almost 2x size randomly
- Makes tight gaps impossible temporarily
- Can be used strategically if player times correctly
- **Passable**: Yes, jump when small, wait out size timer

### Level 23: The Slope Paradox
**Mechanic**: Slopes launch upward (instead of sliding down)
- Slopes at positions 10 and 24 shoot player up instantly
- Creates opportunities for height gain
- Floating platforms in mid-air become accessible
- **Design**: Inverted physics mechanic
- **Passable**: Yes, use slopes as jump boosters

### Level 24: Vanishing Acts
**Mechanic**: Platform disappears (1.3s) after jumping from it
- When player jumps, the platform they left becomes invisible
- Invisible for 1.3s, then reappears
- Tests sequencing and planning
- **Design**: Forces methodical pace
- **Passable**: Yes, land on other platforms; original returns

### Level 25: The Intermittent Light
**Mechanic**: Screen blacks out every 2s for 420ms
- Level becomes completely invisible during blackout
- Only previous memory can guide player
- Must memorize layout to navigate blind
- **Design**: Memorization challenge
- **Passable**: Yes, learn level layout first

---

## WORLD 4: The Ultimate Rage Suite (Levels 26-35)

### Level 26: The Low Ceiling
**Mechanic**: Global jump height limit (70px max, entire level)
- Can't jump higher than 70px anywhere
- Tight platforming required
- One gap tests jump precision
- **Passable**: Yes, with skilled jumping

### Level 27: Double Jump Deception
**Mechanic**: Double jump destroys the platform under player
- Player can jump twice normally
- Second jump input destroys the grounded platform
- Encourages single-jump-only play
- **Design**: Risk/reward for advanced players
- **Passable**: Yes, use only single jumps

### Level 28: Ice Age
**Mechanic**: Zero friction (friction = 1.0, no decay)
- Player momentum never decreases on ground
- Must use walls/platforms to stop
- Requires careful speed management
- **Design**: Physics challenge
- **Passable**: Yes, control speed through jumps

### Level 29: The Chase
**Mechanic**: Pursuing wall (starts at x=-50, speed ≈1.1 + time/22000)
- Red wall approaches from left
- Wall accelerates slightly over time
- Must reach flag (x=1720) before caught
- ~30-40 second time pressure
- **Passable**: Yes, maintain reasonable pace

### Level 30: Pixel Perfect
**Mechanic**: Hitbox expansion (+5px padding on hazards)
- Hazards are 5px larger in all directions
- Makes gaps tighter and spikes more deadly
- Tests sub-pixel precision
- **Design**: Mechanical difficulty increase
- **Passable**: Yes, with careful jumps

### Level 31: The Quiz Level
**Mechanic**: Math problems (step on correct answer to progress)
- Platform labels: "4", "5" (2+3=5 is correct)
- Platform labels: "9", "8" (3*3=9 is correct)
- Wrong answers collapse under player
- **Design**: Educational with platformer mechanics
- **Passable**: Yes, basic math knowledge sufficient

### Level 32: Slow Motion Trap
**Mechanic**: Time slows to 10% speed during jumps
- When jumping, time slows for ~900ms (helps, not hurts)
- Extra reaction time for gap crossing
- Gaps become easier to time
- **Design**: Subverted difficulty (appears hard, actually aids player)
- **Passable**: Yes, use slow-motion to your advantage

### Level 33: Ghost Inputs
**Mechanic**: Random phantom inputs (random left/jump commands)
- Every 2-3s, random "ghost" input triggers
- Lasts 150-340ms
- Player can't prevent it, must compensate
- **Design**: Introduces chaos/randomness
- **Passable**: Yes, anticipate and recover from phantom inputs

### Level 34: The False Boundary
**Mechanic**: Left boundary kills player (one-way level)
- Crossing x=0 (left edge) causes instant death
- Forces forward progression
- No turning back
- **Passable**: Yes, one direction only

### Level 35: The Final Screen
**Mechanic**: Combination of multiple trolls
- Falling platforms + gaps + gravity flips + key scramble
- Floating platforms at mid-height require gravity trick
- Everything is here
- **Design**: Grand finale, ultimate test
- **Passable**: Yes, apply learned skills sequentially

---

## Key Design Notes

### Fair vs Unfair Traps
- **Fair**: Player can see/predict the danger, dies because they made a mistake
- **Unfair**: Player has no way to know/predict, dies due to RNG/impossibility

### All Levels Are Fair
- No impossible gap jumps (all gaps ≤1.5 tiles wide)
- No invisible-until-hit hazards (ceiling spikes show visual indicator)
- No required double-jumps to cross fixed gaps
- Mechanics always have a learning curve, never a wall

### Difficulty Progression
- Levels 1-5: Physics introduction
- Levels 6-15: Visual/control tricks
- Levels 16-25: Precision + complex mechanics
- Levels 26-35: Combination + maximum chaos

### Respawn Quick Loop
- Death → Respawn at spawn point in ~260ms
- Death counter increments globally
- Players learn through repetition

---

## Testing Checklist
- [ ] Can complete Level 1 within 3 tries (learning curve)
- [ ] Level 2 invisible platforms fade visibly as approach
- [ ] Level 5 key scramble displays new mapping
- [ ] Level 8 reversed controls properly swap left/right/down
- [ ] Level 13 checkpoint actually resets to level 1
- [ ] Level 19 fake ending shows overlay, then respawns
- [ ] Level 24 platforms reappear after 1.3s
- [ ] Level 29 chase wall is escapable within level time
- [ ] Level 35 includes all major mechanics from previous worlds
