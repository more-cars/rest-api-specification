@REQ_MCA-1746
Feature: Get SESSION RESULT Node by ID
  As an API consumer
  I want to be able to request a specific SESSION RESULT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1749
  Rule: Requests are rejected when there exists no SESSION RESULT with the provided ID

    @TEST_MCA-1750 @implemented
    Scenario: Requesting a SESSION RESULT with invalid ID
      When the user requests a non-existing "SESSION RESULT"
      Then the request should be rejected with status code 404
