@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1855
  Rule: Read-only properties cannot be overridden by the user when creating a LAP TIME

    @TEST_MCA-1856
    Scenario: Expecting read-only properties to be ignored when creating a LAP TIME
      When the user creates a "LAP TIME" "AVUS record" with the following data
        | key         | value        | datatype |
        | time        | PT1M33.294S  | string   |
        | driver_name | Klaus Ludwig | string   |
        | date        | 1996-08-03   | string   |
        | id          | 1234         | number   |
        | created_at  | 2025-01-01   | string   |
        | updated_at  | 2025-01-01   | string   |
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
