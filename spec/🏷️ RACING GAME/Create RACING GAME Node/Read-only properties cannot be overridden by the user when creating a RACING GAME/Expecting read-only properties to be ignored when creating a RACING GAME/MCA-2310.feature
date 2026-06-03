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
        | key          | value              |
        | name         | Forza Motorsport 7 |
        | release_year | 2017               |
        | developer    | Turn 10 Studios    |
        | publisher    | Microsoft Studios  |
        | id           | 1234               |
        | created_at   | 2025-01-01         |
        | updated_at   | 2025-01-01         |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      |
        | created_at | 2025-01-01 |
        | updated_at | 2025-01-01 |
