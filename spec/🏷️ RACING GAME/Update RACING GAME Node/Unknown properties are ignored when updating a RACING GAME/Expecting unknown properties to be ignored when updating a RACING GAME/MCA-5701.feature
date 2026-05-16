@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5700
  Rule: Unknown properties are ignored when updating a RACING GAME

    @TEST_MCA-5701 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a RACING GAME
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
