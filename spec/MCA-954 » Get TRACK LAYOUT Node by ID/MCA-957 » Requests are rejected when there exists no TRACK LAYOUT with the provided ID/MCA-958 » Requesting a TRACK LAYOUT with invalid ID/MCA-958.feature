@REQ_MCA-954
Feature: Get TRACK LAYOUT Node by ID
  As an API consumer
  I want to be able to request a specific TRACK LAYOUT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-957
  Rule: Requests are rejected when there exists no TRACK LAYOUT with the provided ID

    @TEST_MCA-958 @implemented
    Scenario: Requesting a TRACK LAYOUT with invalid ID
      When the user requests a non-existing "TRACK LAYOUT"
      Then the request should be rejected with status code 404
