@REQ_MCA-2491
Feature: Create GAMING PLATFORM Node
  As an API contributor
  I want to be able to create GAMING PLATFORMS
  So I can fill gaps in the database

  @RULE_MCA-2502
  Rule: Read-only properties cannot be overridden by the user when creating a GAMING PLATFORM

    @TEST_MCA-2503 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a GAMING PLATFORM
      When the user creates a "GAMING PLATFORM" "PlayStation 5" with the following data
        | key          | value         | datatype |
        | name         | PlayStation 5 | string   |
        | release_year | 2020          | number   |
        | manufacturer | Sony          | string   |
        | id           | 1234          | number   |
        | created_at   | 2025-01-01    | string   |
        | updated_at   | 2025-01-01    | string   |
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
