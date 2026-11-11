# Creatures of Ki: Kija Renew, what is taken, and what is changed

## Source

| | |
|---|---|
| Mod | Creatures of Ki (Continued) |
| Original author | Shooki |
| Continuation | Mlie (`emipa606`) |
| Workshop | [2726461020](https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020) |
| Repository | https://github.com/emipa606/CreaturesOfKi |
| Last version supported | 1.4 |
| Licence | MIT, see `LICENSE` |

The upstream repository carries an MIT licence, copyright Mlie 2020. That notice ships with this
mod, which is what MIT asks in exchange for redistribution.

**Upstream pull request: not possible.** PUBLISHING.md asks that a fix go back to the source repository
when one exists. `emipa606/CreaturesOfKi` is archived (read-only since 2024-04-25), so no pull request
can be opened. The sibling Teshi mod met the same wall on 2026-09-28 and kept a branch on the fork
`vbardales/CreaturesOfKi`. No history of the original is imported here: this repository starts clean,
and the provenance is this file.

## What is taken

Nothing is copied yet. The plan, from the Workshop folder `2726461020` read on 2026-11-12:

| Planned | Origin |
|---|---|
| Kija textures: head, body (`Female`, `Thin`), chest, tail | `Textures/Things/Kija/*` |
| Kija first names (24) | `Languages/English/Strings/Kija_Names/Kija_First.txt` |
| Stats, tools and behaviour of the race, as values to rebuild on genes | `1.4/Defs/ThingDefs_Races/Races_Kija.xml` |
| Pawn kinds | `1.4/Defs/PawnKindDefs_Humanlikes/PawnKinds_Kija.xml` |
| Factions | `1.4/Defs/FactionDefs/Factions_Kija.xml`, `Factions_Kija_Player.xml` |
| Faction map icon | `Textures/World/KijaCamp.png` |

This table is rewritten at `code`, file by file, with what was really taken.

## What is left behind

The teshi (animal, eggs, body): it lives in the sibling mod
[Creatures of Ki: Teshi Renew](https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Teshi-Renew).

## What is changed

The original Kija are an `AlienRace.ThingDef_AlienRace` of Humanoid Alien Races. This mod rebuilds them
as a Biotech xenotype. Nothing of Humanoid Alien Races is used.

## Status of the taking (2026-11-12)

Taken unchanged: the 15 Kija PNG textures and `KijaCamp.png`, the 24 first names, the `NamerPersonKija` rule
pack. Rebuilt on Biotech, values read from `Alien_Kija`: the stat genes `Kija_Constitution` and `Kija_Industry`
(movement, temperature range, lifespan, research, mining, construction, social, plant yield and work speed),
the genes `Kija_Head`, `Kija_Skin`, `Kija_Tail`, `Kija_Chest`, the head type `Kija_Average`, and the xenotype
`Kija`. Not carried: the fist and bite tools, the hunger rate, the apparel whitelist and gene blacklists of the
HAR race, and the HAR `KijaSettings` weights. Pawn kinds and factions come next.
