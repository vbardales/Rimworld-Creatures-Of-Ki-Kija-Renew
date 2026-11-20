# What STATUS.md lists as unverified and only a capture shows: the head (original customHeadDrawSize 0.7), the tail and
# chest offsets, the Kija skin, the placeholder gene icons. Each scenario takes the Kija from one facing so a reviewer
# sees the head, the tail and the chest on the body. A green here says the trajet ran, not that the picture is right.
@review @kija-looks @timeout:180 @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.clickdiagnostics
Feature: A Kija is drawn with its head, tail and chest on every facing

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

  Scenario Outline: a Kija woman and a Kija man face <facing>
    Given Nelim's Pickle Tools: a colonist "Kay" of kind "Colonist_Kija" exists
    And Nelim's Pickle Tools: "Kay" gender is <gender>
    And I destroy the gear of "Kay"
    And I wait 5 ticks
    And game speed is paused
    And Nelim's Pickle Tools: "Kay" faces <facing>
    When Nelim's Pickle Tools: the camera is centered on "Kay" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    Then Nelim's Pickle Tools: "Kay" has xenotype "Kija"
    And I take a screenshot "kija-<gender>-<facing>"
    And no errors were logged

    Examples:
      | gender | facing |
      | Female | South  |
      | Female | East   |
      | Female | North  |
      | Male   | South  |
      | Male   | East   |
      | Male   | North  |
