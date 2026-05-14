@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5585
  Rule: Updating a TRACK LAYOUT changes the updated_at timestamp

    @TEST_MCA-5586 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a TRACK LAYOUT
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user updates the node "Grand Prix Circuit"
      Then both timestamps in the response should be different
