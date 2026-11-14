# Pickle tests of Creatures of Ki: Kija Renew

Development only, never published. Layout after `PickleTools/docs/AUTHORING.md`: `Mod/` is the test companion
(`nelim.creaturesofki.kija.pickletests`), `wsl-deps.<pass>.map` the mod set of one pass, `Inbox/`, `Parked/` and
`Evidence/` hold runs and stay out of git.

## Pass matrix

| Pass | Map | Filter | What it establishes |
|---|---|---|---|
| Kija body | `wsl-deps.kijabody.map` | `@kija-body` | The mod loads clean (`01-loads`). A Kija colonist is drawn from the Kija body textures through Biotech Bodies: Female and Thin from `Things/Kija/Body/`, Male and Hulk keep the vanilla body (`02-kija-body`). |

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
