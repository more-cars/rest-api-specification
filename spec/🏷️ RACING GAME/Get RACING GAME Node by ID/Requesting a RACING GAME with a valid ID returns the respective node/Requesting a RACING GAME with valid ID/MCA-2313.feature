@REQ_MCA-2311
Feature: Get RACING GAME Node by ID
  As an API consumer
  I want to be able to request a specific RACING GAME
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2312
  Rule: Requesting a RACING GAME with a valid ID returns the respective node

    @TEST_MCA-2313
    Scenario: Requesting a RACING GAME with valid ID
      Given there exists a "RACING GAME" "F1 2025"
      When the user requests the "RACING GAME" "F1 2025"
      Then the response should return with status code 200
      And the response should return the "RACING GAME" "F1 2025"
