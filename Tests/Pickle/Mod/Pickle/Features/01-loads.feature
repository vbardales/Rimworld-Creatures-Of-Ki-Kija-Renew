# Runtime checks only: that the game's own loader kept the Kija defs and logged nothing against the mod. The XML
# contracts, the references and the DefInjected paths belong to the offline checks of the protocols repository.
@kija-body
Feature: Creatures of Ki: Kija Renew loads on its own

  Scenario: the mod, its xenotype and its body gene load without a warning or an error
    Then mod "nelim.creaturesofki.kija" is loaded
    And mod "nelim.biotechbodies" is loaded
    And def "Kija" of type "XenotypeDef" exists
    And def "Kija_Body" of type "GeneDef" exists
    And def "Kija_Head" of type "GeneDef" exists
    And no warnings from mod "Creatures of Ki: Kija Renew"
    And no errors were logged
