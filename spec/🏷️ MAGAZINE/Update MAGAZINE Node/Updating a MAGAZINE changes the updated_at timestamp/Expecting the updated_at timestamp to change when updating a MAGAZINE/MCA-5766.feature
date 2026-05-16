@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5765
  Rule: Updating a MAGAZINE changes the updated_at timestamp

    @TEST_MCA-5766 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a MAGAZINE
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto"
      Then both timestamps in the response should be different
