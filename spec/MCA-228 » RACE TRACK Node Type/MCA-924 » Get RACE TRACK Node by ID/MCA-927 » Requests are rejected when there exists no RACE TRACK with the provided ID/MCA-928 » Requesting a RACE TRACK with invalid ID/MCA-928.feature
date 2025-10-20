@REQ_MCA-924
Feature: Get RACE TRACK Node by ID
  As an API consumer
  I want to be able to request a specific RACE TRACK
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-927
  Rule: Requests are rejected when there exists no RACE TRACK with the provided ID

    @TEST_MCA-928 @implemented
    Scenario: Requesting a RACE TRACK with invalid ID
      When the user requests a non-existing "RACE TRACK"
      Then the request should be rejected with status code 404
