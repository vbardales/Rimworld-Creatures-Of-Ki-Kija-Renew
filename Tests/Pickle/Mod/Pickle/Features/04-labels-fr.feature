# Same defs as 03-labels-en, read in a game started in French (-Language French, never switched inside a run). The
# pawn kind labels are masculine and each has a labelFemale line (2026-11-17), read by the second scenario outline through
# the def field step: a woman shows the feminine title. The gene Kija_Body keeps no French line of its own here: its label is
# asserted only if the translation file holds one, so it is left out and read in the labels capture.
@kija-labels @fr-only @requires:nelim.pickletools.deffields
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

  Scenario Outline: the pawn kind <defName> has the feminine title <label>
    Then Nelim's Pickle Tools: def "<defName>" of type "PawnKindDef" field "labelFemale" is "<label>"

    Examples:
      | defName        | label                |
      | VillagerKija   | villageoise          |
      | Town_GuardKija | garde de la ville    |
      | Kija_Trader    | marchande kija       |
      | Kija_Leader    | cheffe de la ville   |
      | Colonist_Kija  | colone               |
      | Kija_Protector | protectrice kija     |
      | Kija_Ranger    | rôdeuse kija         |
      | Kija_Defender  | défenseuse kija      |
      | Kija_Veteran   | vétérane kija        |
      | Kija_Warrior   | guerrière kija       |
      | Kija_Cleanser  | purificatrice kija   |
