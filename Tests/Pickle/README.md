# Pickle tests of Creatures of Ki: Kija Renew

Development only, never published. Layout after `PickleTools/docs/AUTHORING.md`: `Mod/` is the test companion
(`nelim.creaturesofki.kija.pickletests`), `wsl-deps.<pass>.map` the mod set of one pass, `Inbox/`, `Parked/` and
`Evidence/` hold runs and stay out of git.

## Pass matrix

| Pass | Map | Filter | What it establishes |
|---|---|---|---|
| Kija body | `wsl-deps.kijabody.map` | `@kija-body` | The mod loads clean (`01-loads`). A Kija colonist is drawn from the Kija body textures through Biotech Bodies: Female and Thin from `Things/Kija/Body/`, Male and Hulk keep the vanilla body (`02-kija-body`). |

| Kija kinds | `wsl-deps.kijabody.map` | `@kija-kinds` | A pawn generated from `Colonist_Kija` and from `Kija_Warrior` is a Human of the Kija xenotype holding `Kija_Head` and `Kija_Body` (`05-pawn-kinds`). |
| Kija looks | `wsl-deps.kijabody.map` | `@kija-looks` | `@review` captures of a Kija woman and man facing South, East and North: head size, tail and chest offsets, skin (`06-looks`). |
| Labels English | `wsl-deps.kijabody.map` | `@kija-labels` | The xenotype, the body gene, the 11 pawn kinds and the 2 factions read as expected in English (`03-labels-en`, `@en-only`). |
| Labels French | `wsl-deps.kijabody.map` | `@kija-labels` with `-Language French` | The same defs in a game started in French (`04-labels-fr`, `@fr-only`); a woman with a masculine title is judged on a capture. |

Functional scenarios by promised behavior (`AUDIT.md` 7.a): Kija xenotype and its genes (`01`, `05`), Kija body through
Biotech Bodies (`02`), looks (`06`), pawn kinds (`05`), factions (`01`, `03`, `04`: existence and label; a faction
spawning in a world is the game's own behavior and is not tested), Royalty Empire patch (not played: `OptionalCompat`
is checked offline and Royalty is not staged). Settings and spawn weights: none (`settings_audit: not_applicable`).

No optional integration pass: the mod's only optional patch (Royalty Empire) holds no behavior that a scenario reads.
No DLC-absent pass: Biotech is a hard requirement. French labels are read in game at `playTests` with `-Language French`.

## Command

```
Submit-PickleRun.ps1 -Mod CreaturesOfKiKijaRenew -Owner local_<id> -Label "kija body <sha>" -DepMap wsl-deps.kijabody.map -Filter '@kija-body' -EvidenceDir Tests/Pickle/Inbox/kija-body
```

## Reading the captures

`02-kija-body` is `@review`: its green says the path was drawn, not that the picture is right. Look at
`kija-after-*` for a vanilla body peeking out around the Kija one and for a tint other than white. Not played yet
(2026-11-14).
