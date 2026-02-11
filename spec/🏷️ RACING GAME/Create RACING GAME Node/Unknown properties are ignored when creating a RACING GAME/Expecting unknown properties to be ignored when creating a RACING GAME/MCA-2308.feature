@REQ_MCA-2298
Feature: Create RACING GAME Node
  As an API contributor
  I want to be able to create RACING GAMES
  So I can fill gaps in the database

  @RULE_MCA-2307
  Rule: Unknown properties are ignored when creating a RACING GAME

    @TEST_MCA-2308 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a RACING GAME
      When the user creates a "RACING GAME" "F1 2025" with the following data
        | key          | value              | datatype |
        | name         | Forza Motorsport 7 | string   |
        | release_year | 2017               | number   |
        | developer    | Turn 10 Studios    | string   |
        | publisher    | Microsoft Studios  | string   |
        | thimbleweed  | park               | string   |
      Then the response should contain the following properties
        | key          | value              | datatype |
        | name         | Forza Motorsport 7 | string   |
        | release_year | 2017               | number   |
        | developer    | Turn 10 Studios    | string   |
        | publisher    | Microsoft Studios  | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
