@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5675
  Rule: Updating a LAP TIME changes the updated_at timestamp

    @TEST_MCA-5676 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a LAP TIME
      Given there exists a "LAP TIME" "Fastest lap"
      When the user updates the node "Fastest lap"
      Then both timestamps in the response should be different
