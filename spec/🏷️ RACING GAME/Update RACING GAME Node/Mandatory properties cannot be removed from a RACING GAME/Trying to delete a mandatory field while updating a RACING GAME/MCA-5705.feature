@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5704
  Rule: Mandatory properties cannot be removed from a RACING GAME

    @TEST_MCA-5705 @implemented
    Scenario: Trying to delete a mandatory field while updating a RACING GAME.
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
