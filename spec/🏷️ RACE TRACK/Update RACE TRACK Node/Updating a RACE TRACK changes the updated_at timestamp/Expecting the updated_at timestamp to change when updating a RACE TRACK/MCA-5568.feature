@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5567
  Rule: Updating a RACE TRACK changes the updated_at timestamp

    @TEST_MCA-5568 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a RACE TRACK
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring"
      Then both timestamps in the response should be different
