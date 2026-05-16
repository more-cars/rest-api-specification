@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5729
  Rule: Updating a MODEL CAR changes the updated_at timestamp

    @TEST_MCA-5730 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a MODEL CAR
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user updates the node "F40 Matchbox"
      Then both timestamps in the response should be different
