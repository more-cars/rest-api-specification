@REQ_MCA-3086
Feature: Get RATING Node by ID
  As an API consumer
  I want to be able to request a specific RATING
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3089
  Rule: Requests are rejected when there exists no RATING with the provided ID

    @TEST_MCA-3090 @implemented
    Scenario: Requesting a RATING with invalid ID
      When the user requests a non-existing "RATING"
      Then the request should be rejected with status code 404
