@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5783
  Rule: Updating a MAGAZINE ISSUE changes the updated_at timestamp

    @TEST_MCA-5784 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "sport auto 2_2026"
      When the user updates the node "sport auto 2_2026"
      Then both timestamps in the response should be different
