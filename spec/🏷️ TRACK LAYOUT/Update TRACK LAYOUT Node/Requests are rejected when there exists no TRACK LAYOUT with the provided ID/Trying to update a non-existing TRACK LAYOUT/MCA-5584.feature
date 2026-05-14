@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5583
  Rule: Requests are rejected when there exists no TRACK LAYOUT with the provided ID

    @TEST_MCA-5584 @implemented
    Scenario: Trying to update a non-existing TRACK LAYOUT
      Given "TRACK LAYOUT" "Grand Prix Circuit" does NOT exist
      When the user updates the node "Grand Prix Circuit"
      Then the request should be rejected with status code 404
