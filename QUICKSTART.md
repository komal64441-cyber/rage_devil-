# Rage Devil — Quick Start Guide

## Installation & Running

### Option 1: Play the Game (No Development Needed)
1. Run: `npm run build`
2. Open: `dist/index.html` in your web browser
3. **Play** and prepare to rage

### Option 2: Development Mode
1. Run: `npm install` (if needed)
2. Run: `npm run dev`
3. Open browser to `http://localhost:5173`
4. Game updates live as you edit code

## Controls

### Keyboard
- **Arrow Keys** or **WASD** to move
- **Space/W/Up Arrow** to jump

### Touch (Mobile)
- **D-Pad** on bottom-left for movement
- **Jump** button on bottom-right
- Adjustable via Settings (0.7x to 1.8x size)

## Game Structure

### Menu
- **Play** – Start or continue from last level
- **Level Select** – Jump to any unlocked level
- **Settings** – Mute audio, adjust touch size

### In-Game HUD
- **Death Counter** (top-right) – Total deaths across all levels
- **Current Level** (top-center) – Level number and name
- **Mute Button** (top-right) – Toggle audio
- **Menu Button** (top-left) – Return to main menu

### After Completing a Level
- **Level Complete** overlay shows:
  - Deaths on this level
  - Total deaths overall
  - Option to continue to next level or select different level

### After Beating All 35 Levels
- **Grand Victory** screen celebrates
- Shows total death count as final score
- Option to share the game with friends

## Difficulty Progression

### Worlds
- **World 1** (Levels 1-5): Learn core mechanics [Easy]
- **World 2** (Levels 6-15): Survive control tricks [Medium]
- **World 3** (Levels 16-25): Master precision [Hard]
- **World 4** (Levels 26-35): Ultimate gauntlet [Extreme]

### Expected Attempts Per Level
- Levels 1-10: 3-8 attempts
- Levels 11-20: 5-10 attempts
- Levels 21-30: 6-12 attempts
- Levels 31-35: 10-20 attempts

## Key Mechanics to Know

### Instant Learning Curve
1. **Die once** – Encounter the troll
2. **Die twice** – Understand the pattern
3. **Attempts 3+** – Execute the solution

### Common Trolls
- **Falling Platforms** – Land on them = they collapse
- **Invisible Paths** – Become visible as you approach
- **Key Scramble** – Controls change every 5 seconds
- **Ceiling Spikes** – Drop when you walk under them
- **Runaway Flag** – Escapes when approached

### Pro Tips
1. **Don't give up** – Every level is solvable
2. **Observe patterns** – Watch the HUD for mechanic clues
3. **Memorize layouts** – Use deaths to learn the path
4. **Use the deathcounter** – Track progress and brag about attempts
5. **Mute if stressed** – Audio is optional, gameplay is what matters

## Troubleshooting

### Audio Not Working?
- Check if muted (settings button)
- Try unmuting in browser tab settings
- Refresh the page

### Touch Controls Not Appearing?
- Controls auto-enable on mobile/tablet
- Try resizing browser window narrower (emulate mobile)
- Or use keyboard controls instead

### Level Too Hard?
- **Normal**: This is intentional. Keep trying.
- **Completely Stuck**: Check LEVEL_GUIDE.md for hints (no spoilers, just descriptions)
- **Want Easier**: Unfortunately, you must suffer. That's the game.

### Performance Issues?
- Game targets 60 FPS
- If dropping frames, close other tabs
- Canvas rendering is lightweight; CPU should be fine

## Sharing Your Suffering

### Copy Link to Troll Friends
- After completing any level, click "Copy Link to Troll Your Friends"
- Share the link
- Watch them struggle with the same level
- Laugh

### Death Counter as Score
- Lower is better? No, **higher is bragging rights**
- "I beat the game with 247 deaths"
- That's a badge of honor

## File Structure (For Developers)

```
src/
├── App.tsx                 # Main state management
├── game/
│   ├── types.ts           # TypeScript interfaces
│   ├── levels.ts          # All 35 levels
│   ├── audio.ts           # Audio synthesis
│   └── GameCanvas.tsx     # Game engine
├── components/
│   ├── MainMenu.tsx       # Menu
│   ├── TouchControls.tsx  # Touch buttons
│   └── Overlays.tsx       # Completion screens
└── index.css              # Styles

dist/
└── index.html             # Built game (all-in-one file)
```

## Customization

### Adding New Levels
Edit `src/game/levels.ts` and add to the `levels` array.

### Changing Colors
Edit `level.accent` in level definitions to new hex codes.

### Adjusting Difficulty
Edit physics constants in `src/game/GameCanvas.tsx`:
- `GRAVITY` – How fast player falls
- `JUMP_V` – How high player jumps
- `MAX_SPEED` – Max horizontal speed
- `DEFAULT_FRICTION` – How slippery ground is

### Modifying Touch Button Size
Default is 1.0. Users can adjust via Settings menu.
Min: 0.7, Max: 1.8

## Performance Stats

- **Build Size**: 267 KB (uncompressed), 80 KB (gzipped)
- **Frame Rate**: Target 60 FPS
- **Audio**: Synthesized in real-time (Web Audio API)
- **Dependencies**: React, Vite, Tailwind CSS only

## Browser Support

- ✅ Chrome/Edge (latest)
- ✅ Firefox (latest)
- ✅ Safari (iOS 14+)
- ✅ Mobile browsers (touch-enabled)

## FAQ

**Q: Is the game impossible?**
A: No. All 35 levels are beatable. They're just frustrating.

**Q: Can I skip levels?**
A: Yes, via the Level Select menu. Completed levels show a checkmark.

**Q: Are there cheats?**
A: No. But you can edit `src/game/levels.ts` to create your own easy version.

**Q: Why is the game so mean?**
A: That's the point. It's called "Rage Devil" for a reason.

**Q: Can I play offline?**
A: Yes! Once built, `dist/index.html` works completely offline.

**Q: How long is the game?**
A: 5-15 hours depending on skill level.

**Q: Is there a speedrun mode?**
A: Not built-in, but feel free to time yourself. Share your PB.

---

**Ready to rage? Open `dist/index.html` and start playing!**
