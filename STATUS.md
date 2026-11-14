---
mod: Creatures of Ki: Kija Renew
packageId: nelim.creaturesofki.kija
repo: Rimworld-Creatures-Of-Ki-Kija-Renew
remote: https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Kija-Renew.git
local_path: C:\Users\nelim\Documents\rimworld\CreaturesOfKiKijaRenew
visibility: public
detached: yes
workflow_stage: playTests[1.0.0]
licence: open
licence_spdx: MIT
licence_at: "2026-11-12: MIT, copyright 2020 Mlie, in LICENSE of the upstream repository (emipa606/CreaturesOfKi, archived 2024-04-25) and in LICENSE.md of Workshop 2726461020; the source declares 1.4 and nothing further, so it is not alive in the latest version; MIT permits redistribution with the notice, which ships in LICENSE and Mod/LICENSE"
upstream_mod_remotes:
  - https://github.com/emipa606/CreaturesOfKi
upstream_pr: impossible, repository archived (read-only since 2024-04-25); the Teshi mod documented the same refusal on 2026-09-28
upstream_synced: "2026-11-13 emipa606/CreaturesOfKi@52b8f28"
settings_audit: not_applicable
localization: complete
translation_en: complete
translation_fr: complete
dependencies: complete
workshop: none
workshop_required_items: n/a, not released yet
published: no
tested_on: "2026-11-14 pickle 6629 on 85d744f (loads and Kija body only; pawn kinds, factions, head, tail, French labels not played)"
maintainer: Claude Code, the session that holds this standalone repository
remaining:
  - "2026-11-14: writeTests left at 71c9a12 (AUDIT 7): 7.a functional scenarios by behavior in Tests/Pickle/README.md; 7.b/7.c shared offline checks replayed on this tree with Run-OfflineChecks.ps1 -AlsoScan ../BiotechBodies/Mod: 8 of 10 ok, ModBasics 2 expected findings (BiB has no steamWorkshopUrl until its release, Preview.png comes at mountPreview), XmlFields ok with -ExtraAssemblies BiotechBodies.dll (fails without it: BodyLookExtension unknown, expected), XmlClasses skipped (no game type list); no local script, so no Rule-OwnValues.ps1 and no Test-Mod.ps1 (generator needs the 0.1.0 prepublication, AUDIT 7.b); 7.d Pickle suites 01 to 06 written, six features, map wsl-deps.kijabody.map, no local step; 01 and 02 played green (ticket 6629), 03 to 06 not played yet. Nothing pushed, on purpose (BiB unpublished). Next at playTests: 8.0 ecosystem refresh by PiI, then tickets for 03 and 05 and 06 (English), 04 (French), one small ticket each"
  - "2026-11-14: ticket 6629 (kija body 85d744f, filter @kija-body, map wsl-deps.kijabody.map) GREEN: 5 passed, 0 failed, exitReason passed (summary.json). Mod and xenotype load clean; Female Kija drawn from Things/Kija/Body/Naked_Female, Thin from Naked_Thin, Male and Hulk keep the vanilla Naked_Male and Naked_Hulk. Captures read (after-Female, after-Thin, before-Female): Kija fawn body drawn, vanilla body not visible, no tint seen; read on 3 of 8 captures only, not a pixel check. Proof minified in Tests/Pickle/Evidence/kija-body (RELEASE.md). Tests/Pickle holds 01-loads and 02-kija-body. This proves the body texture only: head size, tail and chest offsets, pawn kinds, factions, French labels stay unplayed. BiB green on its side (C1 BodyLookExtension, its ticket 51f3 on e3e7df5, 2026-11-14), BiB not published, no date. DLC rule of 2026-11-14 checked: no DLC word in the French, English names Biotech and Royalty kept. PiI found no translation of the original: nothing to integrate (refresh at playTests, AUDIT 8.0)"
  - "2026-11-12: unpushed: all local commits since origin/main (22 on 2026-11-14) not pushed on purpose: public repo would reference unpublished BiB; push at BiB release unless the owner says earlier. 2026-11-12: unverified: Kija body in XML, not played (ticket 6629 above); owner: continue other stages in parallel, only our release depends on BiB release: GeneDef Kija_Body (BiotechBodies.BodyLookExtension, Female + Thin paths Things/Kija/Body/Naked_<type>, exclusionTag BiB_BodyLook) in Xenotype Kija; About: modDependencies + loadAfter nelim.biotechbodies. BiB (local_1d89a27b, owner yes 2026-11-12) not published, adds test and replays: do not ship before its green report and its release. No Child/Baby textures (game graphic kept). To check in game with Pickle: no vanilla body peeking out, tint white"
  - "2026-11-12: unverified: pawn kinds (13), factions (KijaOutcast, KijaColonyPlayer) and the Royalty Empire patch converted from the original (race Human + xenotypeSet Kija 999); HAR-only parts dropped (apparel whitelist, gene blacklists, KijaSettings weights); settings of wanderers, refugees, slaves, starting colonists to be decided; nothing played"
  - "2026-11-12: unverified: head draw size (original 0.7 customHeadDrawSize), tail and chest offsets, gene icons and xenotype icon (vanilla placeholders), tools (original fists 10 and bite 12 not carried: a gene cannot set tools), hunger rate 0.7 not carried; all to check in game with Pickle"
  - "2026-11-12: unverified: French pawn kind labels are masculine (no labelFemale): check the render in game at playTests, add labelFemale only if a woman shows a masculine title"
  - "2026-11-12: unverified: tell the Teshi session its backlog item Teshi people as Biotech xenotype moved here"
updated: 2026-11-14
protocols_read_sha: 8f5bd2ee32bbbe88cd98fa2ccad3b5672ae01206
---

# Creatures of Ki: Kija Renew: status

Current state only: the front matter above is the source of truth, run lines go to `Docs/runs/`.
2026-11-12: ModIcon-source.png delivered by the owner (1254 px, transparent), ModIcon.png 128 px (18991 bytes, Lanczos) and Art/ModIcon.ico derived. Repository set up (owner order: the Kija of Creatures of Ki, as a Biotech xenotype, the other half of
the Teshi mod). Duplicate check 1.a: `Search-Workshop.sh -p Kija -i About.xml`, no Biotech or xenotype Kija mod.

2026-11-12: ChatGPT review of the English texts validated by the owner (2 pages: 1 applied, 2 refused, then 0 recommendations); refusals in Docs/review-refusals.md. French not written yet.

2026-11-12 Settings audit (5.a to 5.g): not_applicable. Inventory read in the sources: Mod/ holds only XML defs (FactionDefs, GeneDefs, HeadTypeDefs, PawnKindDefs_Humanlikes, RulePackDefs, XenotypeDefs), one patch, textures and one name file. No assembly, no Source/, no ModSettings class, no MainButtonDef, no settings key in Languages. So no settings page and no MainButtons shortcut exist, none is empty or greyed. Nothing configurable that players need beyond what vanilla Biotech xenotype selection gives. Spawn weights of the pawn kinds (wanderers, refugees, slaves, starting colonists) stay fixed in the defs, not settings. Checks: Check-Status 0 errors, replay ledger .replays/CreaturesOfKiKijaRenew-20261112.tsv (Check-Replay OK).

2026-11-12 dependencies (rev 0a87663): hard: nelim.biotechbodies (Kija_Body gene, not published yet, no Workshop URL until its release; add steamWorkshopUrl then). DLC: Biotech required (xenotype, genes), declared loadAfter Ludeon.RimWorld.Biotech. Optional: Royalty (Patches/Royalty_Empire.xml, PatchOperationFindMod, OptionalCompat.xml). workshop_required_items: n/a, not released yet.

2026-11-12 Translation audit: English texts reviewed by ChatGPT (3 passes, 1 applied, 3 refused, last pass 0 corrections) and validated by Virginie, rev f27c2b6. translation_en complete. French not written yet: translation_fr unchecked, 31 gaps in Check-Translations.

2026-11-12 Translation audit (French): French lives in Mod/Languages/French/DefInjected (GeneDef, XenotypeDef, FactionDef, PawnKindDef), 31 keys, no Keyed text, no code text. ChatGPT review of the French text: 2 applied (Kija_Chest.label, CHANGELOG wording), 1 not applicable yet (PUBLICATION.md, written at writeDocs). Doubts flagged in Docs/translation-review-flags.json (masculine role labels, labeur, KijaColonyPlayer.description). Check-Translations PASS. translation_fr stays partial until Virginie reviews the French (unverified: French review by Virginie; in-game check at playTests).

2026-11-12 French review by Virginie: validated, revision 434e4a6, no corrections requested (4 ChatGPT passes beforehand: 3 applied remarks, 0 refused after the first two; last pass 0 corrections). translation_fr complete, localization complete. In game checks (raw keys, pawn kind labels render) stay unverified until playTests.

## Ecosystem

2026-11-13, study by PiI (`../docs/inventory/ecosystem-steam/CreaturesOfKiKijaRenew.md`, rev f7f2362, 298 Steam hits read, nothing subscribed): no duplicate, fork or replacement, no other Kija race. Only the original Creatures of Ki (Continued) 2726461020 (tags 1.0 to 1.4, dead for 1.6) shares our 14 defNames (expected). No other mod links, patches, retextures or translates it. Verdict: the mod goes on. Refresh at `playTests` (AUDIT 8.0).
