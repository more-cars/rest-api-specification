@REQ_MCA-2298
Feature: Create RACING GAME Node
  As an API contributor
  I want to be able to create RACING GAMES
  So I can fill gaps in the database

  @RULE_MCA-2304
  Rule: The response contains all specified properties when creating a RACING GAME

    @TEST_MCA-2306
    Scenario: Expecting empty properties to be returned as null values when creating a RACING GAME
      When the user creates a "RACING GAME" "F1 2025" with the following data
        | key  | value              | datatype |
        | name | Forza Motorsport 7 | string   |
      Then the response should contain the following properties
        | key          | value              | datatype |
        | name         | Forza Motorsport 7 | string   |
        | release_year |                    | number   |
        | developer    |                    | string   |
        | publisher    |                    | string   |
