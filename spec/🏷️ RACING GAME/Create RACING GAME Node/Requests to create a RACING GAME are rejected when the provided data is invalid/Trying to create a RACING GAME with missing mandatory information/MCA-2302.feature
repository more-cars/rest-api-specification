@REQ_MCA-2298
Feature: Create RACING GAME Node
  As an API contributor
  I want to be able to create RACING GAMES
  So I can fill gaps in the database

  @RULE_MCA-2301
  Rule: Requests to create a RACING GAME are rejected when the provided data is invalid

    @TEST_MCA-2302
    Scenario: Trying to create a RACING GAME with missing mandatory information
      When the user tries to create a "RACING GAME" "F1 2025" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
