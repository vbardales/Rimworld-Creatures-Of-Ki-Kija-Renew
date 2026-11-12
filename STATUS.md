---
mod: Creatures of Ki: Kija Renew
packageId: nelim.creaturesofkikija
repo: Rimworld-Creatures-Of-Ki-Kija-Renew
remote: https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Kija-Renew.git
local_path: C:\Users\nelim\Documents\rimworld\CreaturesOfKiKijaRenew
visibility: public
detached: yes
workflow_stage: localize[1.0.0]
licence: open
licence_spdx: MIT
licence_at: "2026-11-12: MIT, copyright 2020 Mlie, in LICENSE of the upstream repository (emipa606/CreaturesOfKi, archived 2024-04-25) and in LICENSE.md of Workshop 2726461020; the source declares 1.4 and nothing further, so it is not alive in the latest version; MIT permits redistribution with the notice, which ships in LICENSE and Mod/LICENSE"
upstream_mod_remotes:
  - https://github.com/emipa606/CreaturesOfKi
upstream_pr: impossible, repository archived (read-only since 2024-04-25); the Teshi mod documented the same refusal on 2026-09-28
settings_audit: not_applicable
localization: partial
translation_en: complete
translation_fr: unchecked
dependencies: complete
workshop: none
workshop_required_items: n/a, not released yet
published: no
tested_on: never
maintainer: Claude Code, the session that holds this standalone repository
remaining:
  - "2026-11-12: unpushed: 3 local commits (0da820d, 0a87663, 6efee7a) not pushed on purpose: public repo would reference unpublished BiB; push at BiB release unless the owner says earlier. 2026-11-12: unverified: Kija body in XML, not played, waiting only for BiB green message (local_1d89a27b) before the Pickle ticket; owner: continue other stages in parallel, only our release depends on BiB release: GeneDef Kija_Body (BiotechBodies.BodyLookExtension, Female + Thin paths Things/Kija/Body/Naked_<type>, exclusionTag BiB_BodyLook) in Xenotype Kija; About: modDependencies + loadAfter nelim.biotechbodies. BiB (local_1d89a27b, owner yes 2026-11-12) not published, adds test and replays: do not ship before its green report and its release. No Child/Baby textures (game graphic kept). To check in game with Pickle: no vanilla body peeking out, tint white"
  - "2026-11-12: unverified: pawn kinds (13), factions (KijaOutcast, KijaColonyPlayer) and the Royalty Empire patch converted from the original (race Human + xenotypeSet Kija 999); HAR-only parts dropped (apparel whitelist, gene blacklists, KijaSettings weights); settings of wanderers, refugees, slaves, starting colonists to be decided; nothing played"
  - "2026-11-12: unverified: head draw size (original 0.7 customHeadDrawSize), tail and chest offsets, gene icons and xenotype icon (vanilla placeholders), tools (original fists 10 and bite 12 not carried: a gene cannot set tools), hunger rate 0.7 not carried; all to check in game with Pickle"
  - "2026-11-12: unverified: tell the Teshi session its backlog item Teshi people as Biotech xenotype moved here"
updated: 2026-11-12
protocols_read_sha: b14aab5e8b2a7be8e53983a3d94548309d72f30f
---

# Creatures of Ki: Kija Renew: status

Current state only: the front matter above is the source of truth, run lines go to `Docs/runs/`.
2026-11-12: ModIcon-source.png delivered by the owner (1254 px, transparent), ModIcon.png 128 px (18991 bytes, Lanczos) and Art/ModIcon.ico derived. Repository set up (owner order: the Kija of Creatures of Ki, as a Biotech xenotype, the other half of
the Teshi mod). Duplicate check 1.a: `Search-Workshop.sh -p Kija -i About.xml`, no Biotech or xenotype Kija mod.

2026-11-12: ChatGPT review of the English texts validated by the owner (2 pages: 1 applied, 2 refused, then 0 recommendations); refusals in Docs/review-refusals.md. French not written yet.

2026-11-12 Settings audit (5.a to 5.g): not_applicable. Inventory read in the sources: Mod/ holds only XML defs (FactionDefs, GeneDefs, HeadTypeDefs, PawnKindDefs_Humanlikes, RulePackDefs, XenotypeDefs), one patch, textures and one name file. No assembly, no Source/, no ModSettings class, no MainButtonDef, no settings key in Languages. So no settings page and no MainButtons shortcut exist, none is empty or greyed. Nothing configurable that players need beyond what vanilla Biotech xenotype selection gives. Spawn weights of the pawn kinds (wanderers, refugees, slaves, starting colonists) stay fixed in the defs, not settings. Checks: Check-Status 0 errors, replay ledger .replays/CreaturesOfKiKijaRenew-20261112.tsv (Check-Replay OK).

2026-11-12 dependencies (rev 0a87663): hard: nelim.biotechbodies (Kija_Body gene, not published yet, no Workshop URL until its release; add steamWorkshopUrl then). DLC: Biotech required (xenotype, genes), declared loadAfter Ludeon.RimWorld.Biotech. Optional: Royalty (Patches/Royalty_Empire.xml, PatchOperationFindMod, OptionalCompat.xml). workshop_required_items: n/a, not released yet.

2026-11-12 Translation audit: English texts reviewed by ChatGPT (3 passes, 1 applied, 3 refused, last pass 0 corrections) and validated by Virginie, rev f27c2b6. translation_en complete. French not written yet: translation_fr unchecked, 31 gaps in Check-Translations.
