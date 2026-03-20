@REQ_MCA-3790
Feature: Create MODEL CAR Node
  As an API contributor
  I want to be able to create MODEL CARS
  So I can fill gaps in the database

  @RULE_MCA-3801
  Rule: Read-only properties cannot be overridden by the user when creating a MODEL CAR

    @TEST_MCA-3802 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a MODEL CAR
      When the user creates a "MODEL CAR" "F40 Matchbox" with the following data
        | key          | value      | datatype |
        | name         | BMW 2002   | string   |
        | product_code | DHX60      | string   |
        | release_year | 2016       | number   |
        | scale        | 1:64       | string   |
        | series       | BMW        | string   |
        | id           | 1234       | number   |
        | created_at   | 2025-01-01 | string   |
        | updated_at   | 2025-01-01 | string   |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      | datatype |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
