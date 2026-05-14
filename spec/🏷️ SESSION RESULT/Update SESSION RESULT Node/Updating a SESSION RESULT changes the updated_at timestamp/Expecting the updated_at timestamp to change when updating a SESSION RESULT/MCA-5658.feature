@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5657
  Rule: Updating a SESSION RESULT changes the updated_at timestamp

    @TEST_MCA-5658 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a SESSION RESULT
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place"
      Then both timestamps in the response should be different
