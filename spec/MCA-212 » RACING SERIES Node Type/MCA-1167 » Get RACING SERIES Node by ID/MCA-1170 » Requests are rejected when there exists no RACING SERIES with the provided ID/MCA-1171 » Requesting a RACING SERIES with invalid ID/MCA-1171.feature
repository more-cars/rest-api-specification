@REQ_MCA-1167
Feature: Get RACING SERIES Node by ID
  As an API consumer
  I want to be able to request a specific RACING SERIES
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1170
  Rule: Requests are rejected when there exists no RACING SERIES with the provided ID

    @TEST_MCA-1171 @implemented
    Scenario: Requesting a RACING SERIES with invalid ID
      When the user requests a non-existing "RACING SERIES"
      Then the request should be rejected with status code 404
