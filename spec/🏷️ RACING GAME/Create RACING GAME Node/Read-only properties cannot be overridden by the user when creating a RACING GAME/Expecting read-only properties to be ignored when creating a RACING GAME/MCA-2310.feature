@REQ_MCA-2298
Feature: Create RACING GAME Node
  As an API contributor
  I want to be able to create RACING GAMES
  So I can fill gaps in the database

  @RULE_MCA-2309
  Rule: Read-only properties cannot be overridden by the user when creating a RACING GAME

    @TEST_MCA-2310 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a RACING GAME
      When the user creates a "RACING GAME" "F1 2025" with the following data
        | key          | value              | datatype |
        | name         | Forza Motorsport 7 | string   |
        | release_year | 2017               | number   |
        | developer    | Turn 10 Studios    | string   |
        | publisher    | Microsoft Studios  | string   |
        | id           | 1234               | number   |
        | created_at   | 2025-01-01         | string   |
        | updated_at   | 2025-01-01         | string   |
      Then the response should contain the following keys
        | key        |
        | id         |
        | created_at |
        | updated_at |
      But the response should NOT contain the following properties
        | key        | value      | datatype |
        | id         | 1234       | number   |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
