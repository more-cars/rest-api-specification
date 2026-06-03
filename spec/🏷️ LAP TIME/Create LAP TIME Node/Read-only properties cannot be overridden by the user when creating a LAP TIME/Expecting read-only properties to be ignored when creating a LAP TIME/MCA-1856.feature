@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1855
  Rule: Read-only properties cannot be overridden by the user when creating a LAP TIME

    @TEST_MCA-1856 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a LAP TIME
      When the user creates a "LAP TIME" "AVUS record" with the following data
        | key         | value        |
        | time        | PT1M33.294S  |
        | driver_name | Klaus Ludwig |
        | date        | 1996-08-03   |
        | id          | 1234         |
        | created_at  | 2025-01-01   |
        | updated_at  | 2025-01-01   |
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
