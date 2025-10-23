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
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | string   |
        | short_name   | DTM                          | string   |
        | founded      | 2000                         | number   |
        | defunct      |                              | number   |
        | organized_by | ITR                          | string   |
        | vehicle_type | touring cars                 | string   |
        | id           | 1234                         | number   |
        | created_at   | 2025-01-01                   | string   |
        | updated_at   | 2025-01-01                   | string   |
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
