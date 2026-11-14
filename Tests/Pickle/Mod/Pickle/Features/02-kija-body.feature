@review @kija-body @timeout:180 @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.screenshotstudio
Feature: a Kija colonist is drawn with the Kija body textures through Biotech Bodies

  # The gene Kija_Body (Mod/Defs/GeneDefs/Genes_Kija.xml) carries a BiotechBodies.BodyLookExtension: Female is drawn
  # from Things/Kija/Body/Naked_Female, Thin from Things/Kija/Body/Naked_Thin. Male and Hulk are not listed, so the
  # game keeps the vanilla body for them. The body type stays the pawn's own: it is set with a gene after the
  # xenotype, because the genes choose the body type whenever one is added or removed. No texture mod is loaded, so
  # the vanilla paths are the baseline. Model: BiotechBodies/Tests/Pickle/Mod/Pickle/Features/15-custom-body.feature
  # (green, ticket 51f3). Not asserted here and read on the captures: no vanilla body peeking out, white tint.
  # Child and baby bodies have no Kija texture: the game graphic is kept, not tested.

  Background:
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)

  Scenario Outline: a <type> Kija is drawn from <path>
    Given Nelim's Pickle Tools: a colonist "Kay" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Kay" gender is <gender>
    And Nelim's Pickle Tools: "Kay" body type is <type>
    And I destroy the gear of "Kay"
    And I wait 5 ticks
    And game speed is paused
    And Nelim's Pickle Tools: "Kay" faces South
    When Nelim's Pickle Tools: the camera is centered on "Kay" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "kija-before-<type>"
    And Nelim's Pickle Tools: "Kay" xenotype is "Kija"
    And Nelim's Pickle Tools: "Kay" body type is <type>
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Kay" has xenotype "Kija"
    And Nelim's Pickle Tools: "Kay" holds the gene "Kija_Body"
    And Nelim's Pickle Tools: "Kay" has body type <type>
    And Nelim's Pickle Tools: the body texture of "Kay" is logged
    And Nelim's Pickle Tools: the body of "Kay" is drawn from the texture path "<path>"
    And Nelim's Pickle Tools: "Kay" faces South
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "kija-after-<type>"
    Then no errors were logged

    Examples:
      | type | gender | path                                    |
      | Female | Female | Things/Kija/Body/Naked_Female           |
      | Thin | Female | Things/Kija/Body/Naked_Thin             |
      | Male | Male   | Things/Pawn/Humanlike/Bodies/Naked_Male |
      | Hulk | Female | Things/Pawn/Humanlike/Bodies/Naked_Hulk |
