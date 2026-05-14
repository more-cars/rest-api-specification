@REQ_MCA-5598
Feature: Update RACING SERIES Node
  As an API contributor
  I want to be able to update a RACING SERIES
  So I can add missing information or fix incorrect data

  @RULE_MCA-5601
  Rule: Requests are rejected when there exists no RACING SERIES with the provided ID

    @TEST_MCA-5602 @implemented
    Scenario: Trying to update a non-existing RACING SERIES
      Given "RACING SERIES" "Formula 1" does NOT exist
      When the user updates the node "Formula 1"
      Then the request should be rejected with status code 404
