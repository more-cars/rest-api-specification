@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5933
  Rule: Updating a BOOK changes the updated_at timestamp

    @TEST_MCA-5934 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers"
      Then both timestamps in the response should be different
