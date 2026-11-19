# Probe, not a gallery capture: does the face stack (mouth, lids) draw on a Kija head in the Sanctuary map, built as 08-gallery builds it (xenotype Kija, no head type step, Bald)?
# One guest, one close screenshot of the head. If mouth or lids are missing, the log names the missing Facial Animation comp.
@requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.colonistrace @requires:nelim.biotechbodies
Feature: Kija face parts probe

  @probe
  Scenario: kija-face-probe
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"
    And I set the hour to 10
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: a colonist "Fenn" of kind "Colonist_Kija" exists
    And Nelim's Pickle Tools: "Fenn" gender is Female
    And Nelim's Pickle Tools: "Fenn" xenotype is "Kija"
    And Nelim's Pickle Tools: "Fenn" hairstyle is "Bald"
    And Nelim's Pickle Tools: "Fenn" mouth is "MouthLipsSimpleSmile"
    And Nelim's Pickle Tools: "Fenn" lids are "LidCheerful"
    And Nelim's Pickle Tools: the graphics of "Fenn" are refreshed
    And Nelim's Pickle Tools: "Fenn" stands at (166, 171) facing South
    And I wait 60 ticks
    When game speed is paused
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the camera is centered on "Fenn" at root size 2
    And I take a screenshot "face-probe-fenn"
