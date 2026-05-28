@REQ_MCA-1141
Feature: Create RACING SERIES Node
  As an API contributor
  I want to be able to create RACING SERIES
  So I can fill gaps in the database

  @RULE_MCA-1152
  Rule: Read-only properties cannot be overridden by the user when creating a RACING SERIES

  @TEST_MCA-1153 @implemented
  Scenario: Expecting read-only properties to be ignored when creating a RACING SERIES
    When the user creates a "RACING SERIES" "DTM" with the following data
      | key          | value                        |
      | name         | Deutsche Tourenwagen-Masters |
      | short_name   | DTM                          |
      | founded      | 2000                         |
      | defunct      |                              |
      | organized_by | ITR                          |
      | vehicle_type | touring cars                 |
      | country_code | DE                           |
      | id           | 1234                         |
      | created_at   | 2025-01-01                   |
      | updated_at   | 2025-01-01                   |
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
