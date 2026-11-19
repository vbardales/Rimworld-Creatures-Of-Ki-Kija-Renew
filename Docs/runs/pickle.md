# Pickle runs

One section per run date (8.l). Git history keeps the rest.

## 2026-11-14

Headless game through the machine queue. Evidence in `Tests/Pickle/Evidence/kija-body/` (ignored by git, minified). The first scenario of every run checks that the mod, its xenotype and its body gene load with no warning or error in the log.

| Run | Result | Evidence folder | What it showed |
| --- | --- | --- | --- |
| ticket 6629, `kijabody` on 85d744f | `passed`: 5 passed, 0 failed | `kija-body/` | Mod and xenotype load clean. Female Kija drawn from `Things/Kija/Body/Naked_Female`, Thin from `Naked_Thin`. Male and Hulk kept the vanilla body (not mapped yet). Captures read on 3 of 8 |

Not shown: head size, tail and chest offsets, pawn kinds, factions, French labels.

## 2026-11-15

Headless game through the machine queue, all on cb46ec9. Evidence in `Tests/Pickle/Evidence/` (ignored by git, minified). Each run starts with the clean-load check of the log.

| Run | Result | Evidence folder | What it showed |
| --- | --- | --- | --- |
| ticket 2b34, kinds and looks | `passed`: 8 passed, 0 failed | `kija-looks/` | `Colonist_Kija` and `Kija_Warrior` generate a Human of xenotype Kija with `Kija_Head` and `Kija_Body`. 6 captures, read on 3 (Female-East, Male-North, Male-South): ears, mane, tail in profile, fawn body on the woman. The man kept the vanilla torso (fixed on 2026-11-17) |
| ticket 9654, labels EN | `passed`: 15 passed, 0 failed | `labels-en/` | Xenotype, gene, 11 pawn kinds and 2 factions read as expected in English |
| ticket b026, labels FR | `passed`: 14 passed, 0 failed | `labels-fr/` | Same set read in a game started in French, accents correct. No capture of a masculine kind label on a woman |

## 2026-11-17

Headless game through the machine queue. Evidence summary in `Tests/Pickle/Evidence/kija-body/` (ignored by git); the Inbox run was read, then deleted.

| Run | Result | Evidence folder | What it showed |
| --- | --- | --- | --- |
| ticket dc9d, `kijabody` on c4b12ed | `passed`: 5 passed, 0 failed | `kija-body/` | Male Kija drawn from `Naked_Thin`, Hulk from `Naked_Female` (Biotech Bodies). Captures after-Male and after-Hulk read: Kija fawn torso under the clothes on the Male, fawn body on the Hulk, no vanilla body visible |
| ticket 7d0b, `kijabody` EN on 7a9b2a1 | `passed`: 18 passed, 0 failed | `log-en/` | Player.log read: 0 exception, 0 mod error; WARN only for missing downloadUrl/steamWorkshopUrl on dependencies, ERROR "Pickle tests did not load any content" (expected, test mod) |
| ticket 249c, `kijabody` FR on 7a9b2a1 | `passed`: 28 passed, 0 failed | `log-fr/` | 14 labels, 11 feminine titles, 2 pawn kinds are Kija, Empire not permanent enemy. Player.log read: 0 exception, 0 mod error; WARN only vanilla ("hidden ritual precept was missing: Funérailles (sans corps)", map saved in 1.6.4633 loaded in 1.6.4871), FMOD/ALSA audio noise of the headless run |
