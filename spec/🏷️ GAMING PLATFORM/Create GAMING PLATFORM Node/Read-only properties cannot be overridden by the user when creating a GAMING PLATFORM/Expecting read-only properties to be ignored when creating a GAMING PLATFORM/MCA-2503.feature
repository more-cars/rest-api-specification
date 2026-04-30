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
        | key          | value         |
        | name         | PlayStation 5 |
        | release_year | 2020          |
        | manufacturer | Sony          |
        | id           | 1234          |
        | created_at   | 2025-01-01    |
        | updated_at   | 2025-01-01    |
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
