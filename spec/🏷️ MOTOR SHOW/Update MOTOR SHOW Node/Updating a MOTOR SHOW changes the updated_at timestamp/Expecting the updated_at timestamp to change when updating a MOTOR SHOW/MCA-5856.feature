@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5855
  Rule: Updating a MOTOR SHOW changes the updated_at timestamp

    @TEST_MCA-5856 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a MOTOR SHOW
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt"
      Then both timestamps in the response should be different
