# Same defs as 03-labels-en, read in a game started in French (-Language French, never switched inside a run). The
# pawn kind labels are masculine, with no labelFemale: this run shows the text, a woman showing a masculine title is
# judged on a capture at the end of playTests. The gene Kija_Body keeps no French line of its own here: its label is
# asserted only if the translation file holds one, so it is left out and read in the labels capture.
@kija-labels @fr-only
Feature: The Kija labels read in French

  Scenario Outline: the <type> <defName> is labelled <label>
    Then Nelim's Pickle Tools: the def "<defName>" of type "<type>" is labelled "<label>"

    Examples:
      | type        | defName          | label                |
      | XenotypeDef | Kija             | Kija                 |
      | PawnKindDef | VillagerKija     | Villageois           |
      | PawnKindDef | Town_GuardKija   | Garde de la ville    |
      | PawnKindDef | Kija_Trader      | Marchand kija        |
      | PawnKindDef | Kija_Leader      | Chef de la ville     |
      | PawnKindDef | Colonist_Kija    | Colon                |
      | PawnKindDef | Kija_Protector   | Protecteur kija      |
      | PawnKindDef | Kija_Ranger      | Rôdeur kija          |
      | PawnKindDef | Kija_Defender    | Défenseur kija       |
      | PawnKindDef | Kija_Veteran     | Vétéran kija         |
      | PawnKindDef | Kija_Warrior     | Guerrier kija        |
      | PawnKindDef | Kija_Cleanser    | Purificateur kija    |
      | FactionDef  | KijaOutcast      | Parias kijas         |
      | FactionDef  | KijaColonyPlayer | Nouvelle Kija        |
