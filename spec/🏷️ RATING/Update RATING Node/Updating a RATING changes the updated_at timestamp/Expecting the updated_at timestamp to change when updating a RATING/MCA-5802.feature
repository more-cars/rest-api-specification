@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5801
  Rule: Updating a RATING changes the updated_at timestamp

    @TEST_MCA-5802 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a RATING
      Given there exists a "RATING" "93 Percent"
      When the user updates the node "93 Percent"
      Then both timestamps in the response should be different
