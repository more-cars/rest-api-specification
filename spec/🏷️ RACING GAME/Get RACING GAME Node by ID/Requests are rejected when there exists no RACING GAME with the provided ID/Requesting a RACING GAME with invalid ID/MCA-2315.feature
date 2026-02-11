@REQ_MCA-2311
Feature: Get RACING GAME Node by ID
  As an API consumer
  I want to be able to request a specific RACING GAME
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2314
  Rule: Requests are rejected when there exists no RACING GAME with the provided ID

    @TEST_MCA-2315 @implemented
    Scenario: Requesting a RACING GAME with invalid ID
      When the user requests a non-existing "RACING GAME"
      Then the request should be rejected with status code 404
