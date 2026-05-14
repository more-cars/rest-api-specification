@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5621
  Rule: Updating a RACING EVENT changes the updated_at timestamp

    @TEST_MCA-5622 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a RACING EVENT
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user updates the node "GP Monaco"
      Then both timestamps in the response should be different
