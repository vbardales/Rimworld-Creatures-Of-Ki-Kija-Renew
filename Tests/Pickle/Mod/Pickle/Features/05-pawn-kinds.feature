# The pawn kinds were converted from the original (race Human plus xenotypeSet Kija 999). Only a generated pawn shows
# that the kind really yields a Kija: a Human of the Kija xenotype holding the Kija genes, not a plain human.
# Two kinds are played, the colonist and a fighter; the other kinds share the same xenotypeSet and are asserted by
# their labels in 03 and 04. No screenshot: 06 does the looks.
@kija-kinds @requires:nelim.pickletools.colonistrace
Feature: A Kija pawn kind generates a Kija

  Background:
    Given the save "test-colony" is loaded
    And game speed is paused

  Scenario Outline: a pawn of kind <kind> is a Kija
    Given Nelim's Pickle Tools: a colonist "Kay" of kind "<kind>" exists
    Then Nelim's Pickle Tools: "Kay" is of race "Human"
    And Nelim's Pickle Tools: "Kay" has xenotype "Kija"
    And Nelim's Pickle Tools: "Kay" holds the gene "Kija_Head"
    And Nelim's Pickle Tools: "Kay" holds the gene "Kija_Body"
    And no errors were logged

    Examples:
      | kind          |
      | Colonist_Kija |
      | Kija_Warrior  |
