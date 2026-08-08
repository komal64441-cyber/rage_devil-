# Rage Devil

A minimalist neon troll platformer — 35 levels of intentional deception and frustration. Built with React + Vite + Tailwind CSS. All audio is synthesized via the Web Audio API; no external assets needed.

## Stack

- **React 19** + **TypeScript**
- **Vite 7** (dev server on port 5000)
- **Tailwind CSS 4**
- **Capacitor** (Android/mobile packaging, optional)

## Running

The workflow `Start application` runs `npm run dev` and serves the game at port 5000.

## Project structure

- `src/App.tsx` — root component, game state, routing between menu and game
- `src/components/` — UI components (MainMenu, Overlays, TouchControls, AdSense)
- `src/game/GameCanvas.tsx` — main game loop, canvas rendering, all 35 levels

## User preferences

<!-- Add any remembered preferences here -->
