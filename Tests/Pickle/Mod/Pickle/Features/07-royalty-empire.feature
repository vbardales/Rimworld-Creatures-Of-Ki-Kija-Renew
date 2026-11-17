# 8.f and 8.g: the optional patch Mod/Patches/Royalty_Empire.xml (original Royalty/1.3/Patches/Factions_Misc.xml) adds
# KijaOutcast and KijaColonyPlayer to FactionDef Empire permanentEnemyToEveryoneExcept, so the Kija factions are not
# permanent enemies of the Empire. Royalty is a DLC staged by default. A def-level read: faction spawning and the
# resulting hostility in a world are the game's own behavior and are not tested.
# Expected text read from the first run (2160, 2026-11-17): the nine entries of the staged DLCs, then the two the patch appends. It changes if the staged DLC set changes.
@kija-empire @requires:ludeon.rimworld.royalty @requires:nelim.pickletools.deffields
Feature: The Royalty Empire patch exempts the Kija factions

  Scenario: the Empire is not a permanent enemy of KijaOutcast and KijaColonyPlayer
    Then Nelim's Pickle Tools: def "Empire" of type "FactionDef" field "permanentEnemyToEveryoneExcept" is "OutlanderCivil, TribeCivil, PlayerTribe, PlayerColony, Ancients, Beggars, ResearchExpedition, GravshipCrew, TradersGuild, KijaOutcast, KijaColonyPlayer"
    And no errors were logged
