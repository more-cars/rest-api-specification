@REQ_MCA-5421
Feature: Update COMPANY Node
  As an API contributor
  I want to be able to update a COMPANY
  So I can add missing information or fix incorrect data

  @RULE_MCA-5424
  Rule: Requests are rejected when there exists no COMPANY with the provided ID

    @TEST_MCA-5425 @implemented
    Scenario: Trying to update a non-existing COMPANY
      Given "COMPANY" "BMW AG" does NOT exist
      When the user updates the node "BMW AG"
      Then the request should be rejected with status code 404
