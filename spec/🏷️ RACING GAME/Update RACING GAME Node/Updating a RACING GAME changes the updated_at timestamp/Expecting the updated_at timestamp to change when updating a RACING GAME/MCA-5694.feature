@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5693
  Rule: Updating a RACING GAME changes the updated_at timestamp

    @TEST_MCA-5694 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a RACING GAME
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa"
      Then both timestamps in the response should be different
