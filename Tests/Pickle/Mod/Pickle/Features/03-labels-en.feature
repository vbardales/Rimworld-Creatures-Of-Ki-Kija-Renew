# The labels of the xenotype, the 11 pawn kinds and the 2 factions as the game shows them in English (LabelCap, first
# letter upper case). The translation resources are checked offline; only a running game says which text the player
# reads. English only: the French run is 04-labels-fr.
@kija-labels @en-only
Feature: The Kija labels read in English

  Scenario Outline: the <type> <defName> is labelled <label>
    Then Nelim's Pickle Tools: the def "<defName>" of type "<type>" is labelled "<label>"

    Examples:
      | type        | defName          | label           |
      | XenotypeDef | Kija             | Kija            |
      | GeneDef     | Kija_Body        | Kija body       |
      | PawnKindDef | VillagerKija     | Villager        |
      | PawnKindDef | Town_GuardKija   | Town guard      |
      | PawnKindDef | Kija_Trader      | Kija trader     |
      | PawnKindDef | Kija_Leader      | Town leader     |
      | PawnKindDef | Colonist_Kija    | Colonist        |
      | PawnKindDef | Kija_Protector   | Kija protector  |
      | PawnKindDef | Kija_Ranger      | Kija ranger     |
      | PawnKindDef | Kija_Defender    | Kija defender   |
      | PawnKindDef | Kija_Veteran     | Kija veteran    |
      | PawnKindDef | Kija_Warrior     | Kija warrior    |
      | PawnKindDef | Kija_Cleanser    | Kija cleanser   |
      | FactionDef  | KijaOutcast      | Kija Outcasts   |
      | FactionDef  | KijaColonyPlayer | New Kija        |
