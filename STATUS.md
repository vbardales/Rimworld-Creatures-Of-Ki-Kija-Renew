---
mod: Creatures of Ki: Kija Renew
packageId: nelim.creaturesofkikija
repo: Rimworld-Creatures-Of-Ki-Kija-Renew
remote: https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Kija-Renew.git
local_path: C:\Users\nelim\Documents\rimworld\CreaturesOfKiKijaRenew
visibility: public
detached: yes
workflow_stage: code[1.0.0]
licence: open
licence_spdx: MIT
licence_at: "2026-11-12: MIT, copyright 2020 Mlie, in LICENSE of the upstream repository (emipa606/CreaturesOfKi, archived 2024-04-25) and in LICENSE.md of Workshop 2726461020; the source declares 1.4 and nothing further, so it is not alive in the latest version; MIT permits redistribution with the notice, which ships in LICENSE and Mod/LICENSE"
upstream_mod_remotes:
  - https://github.com/emipa606/CreaturesOfKi
upstream_pr: impossible, repository archived (read-only since 2024-04-25); the Teshi mod documented the same refusal on 2026-09-28
settings_audit: unchecked
localization: unchecked
translation_en: unchecked
translation_fr: unchecked
dependencies: unchecked
workshop: none
published: no
tested_on: never
maintainer: Claude Code, the session that holds this standalone repository
remaining:
  - "2026-11-12: unverified: pawn kinds (13), factions (KijaOutcast, KijaColonyPlayer) and the Royalty Empire patch converted from the original (race Human + xenotypeSet Kija 999); HAR-only parts dropped (apparel whitelist, gene blacklists, KijaSettings weights); settings of wanderers, refugees, slaves, starting colonists to be decided; nothing played"
  - "2026-11-12: feature: Kija body (drawn Female and Thin textures). Vanilla genes cannot name a custom body; BiB (biotechbodies, unpublished, C# only, no XML extension) cannot do it today. Owner decision 2026-11-12: use BiB, and ask BiB for a mod-independent furry body gene (asked, awaiting BiB reply). Add the BiB gene to Xenotype Kija once it exists"
  - "2026-11-12: unverified: head draw size (original 0.7 customHeadDrawSize), tail and chest offsets, gene icons and xenotype icon (vanilla placeholders), tools (original fists 10 and bite 12 not carried: a gene cannot set tools), hunger rate 0.7 not carried; all to check in game with Pickle"
  - "2026-11-12: unverified: asked RWDIP (via TM) how they gave a Biotech race its own body; awaiting reply"
  - "2026-11-12: unverified: tell the Teshi session its backlog item Teshi people as Biotech xenotype moved here"
updated: 2026-11-12
protocols_read_sha: b04475c28fcbf27bd47f4ee877f08147e180efb9
---

# Creatures of Ki: Kija Renew: status

Current state only: the front matter above is the source of truth, run lines go to `Docs/runs/`.
2026-11-12: ModIcon-source.png delivered by the owner (1254 px, transparent), ModIcon.png 128 px (18991 bytes, Lanczos) and Art/ModIcon.ico derived. Repository set up (owner order: the Kija of Creatures of Ki, as a Biotech xenotype, the other half of
the Teshi mod). Duplicate check 1.a: `Search-Workshop.sh -p Kija -i About.xml`, no Biotech or xenotype Kija mod.
