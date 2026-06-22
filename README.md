# Glitch Survivors — 3D Bullet-Heaven (Vampire-Survivors-like)

A complete, playable 3D survivors game in the browser. Single file, no build step.
You only steer — your weapons fire on their own. Survive the endless swarm, vacuum XP,
and stack absurd powers.

## Play

Double-click **`Play RPG.bat`** — it starts a local server and opens your browser.

Or manually (module scripts need http://, not file://):

```powershell
npx --yes serve -l 5599 .
# then open http://localhost:5599
```

## Controls

| Key | Action |
|---|---|
| WASD / Arrows | Move (that's mostly it!) |
| Space | Dash / dodge (brief i-frames, short cooldown) |
| Mouse drag | Rotate camera |
| Mouse wheel | Zoom |

Weapons **auto-fire**. Walk over the blue XP shards to level up.

## The survivors loop

- **Auto-weapons** (4): ✨ Magic Bolt (homing), 💥 Shock Nova (AoE pulse),
  ⚡ Chain Spark (zaps nearest foes), 🛰️ Orbit Guard (orbiting damage orbs).
  Each levels up to 8 (more projectiles, damage, area, faster).
- **Passives** (9): 💪 Might, ⏩ Haste, 🥾 Swift Boots, 🌀 Resonance, ❤️ Vitality,
  🧲 Magnet, 📘 Wisdom, ✚ Regen, 🛡️ Armor.
- **Level-up cards:** every level, pause and pick 1 of 3 upgrades (Vampire-Survivors style).
- **Endless escalating swarm:** more, tougher enemies the longer you survive.
- **Glitch Behemoth boss** every 90 seconds — drops a big XP burst + heart.
- **Goal:** survive as long as you can. Death screen shows time / level / kills. Reboot & retry.

## Juice

Screen shake, procedural sound (shoot / hit / zap / boom / level-up / boss — WebAudio, no files),
particle bursts, floating damage numbers, XP-shard magnet, dash burst, hit-flash on enemies,
low-HP vignette, white flash on boss death, animated upgrade cards.

## Real free asset from the internet

The player character is **`RobotExpressive.glb`**, a CC-licensed rigged + animated model loaded
live from the three.js CDN (falls back to a built-in robot if offline).

## Tech

[three.js](https://threejs.org) r160 via CDN import map. Pure ES modules, zero install.
Everything (world, swarm, weapons, UI, FX, audio) is hand-built in `index.html`.
