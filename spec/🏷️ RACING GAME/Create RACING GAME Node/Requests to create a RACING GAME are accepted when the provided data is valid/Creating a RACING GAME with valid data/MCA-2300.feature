@REQ_MCA-2298
Feature: Create RACING GAME Node
  As an API contributor
  I want to be able to create RACING GAMES
  So I can fill gaps in the database

  @RULE_MCA-2299
  Rule: Requests to create a RACING GAME are accepted when the provided data is valid

    @TEST_MCA-2300 @implemented
    Scenario: Creating a RACING GAME with valid data
      When the user creates a "RACING GAME" "F1 2025" with the following data
        | key          | value              | datatype |
        | name         | Forza Motorsport 7 | string   |
        | release_year | 2017               | number   |
        | developer    | Turn 10 Studios    | string   |
        | publisher    | Microsoft Studios  | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "RACING GAME" "F1 2025"
