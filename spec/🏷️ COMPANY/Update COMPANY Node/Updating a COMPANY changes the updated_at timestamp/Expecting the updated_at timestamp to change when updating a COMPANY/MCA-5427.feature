@REQ_MCA-5421
Feature: Update COMPANY Node
  As an API contributor
  I want to be able to update a COMPANY
  So I can add missing information or fix incorrect data

  @RULE_MCA-5426
  Rule: Updating a COMPANY changes the updated_at timestamp

    @TEST_MCA-5427 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a COMPANY
      Given there exists a "COMPANY" "BMW AG"
      When the user updates the node "BMW AG"
      Then both timestamps in the response should be different
