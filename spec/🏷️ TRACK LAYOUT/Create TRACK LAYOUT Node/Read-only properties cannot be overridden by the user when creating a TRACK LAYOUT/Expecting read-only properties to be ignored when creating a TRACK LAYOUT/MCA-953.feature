@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-952
  Rule: Read-only properties cannot be overridden by the user when creating a TRACK LAYOUT

    @TEST_MCA-953 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a TRACK LAYOUT
      When the user creates a "TRACK LAYOUT" "GP Circuit" with the following data
        | key                   | value      | datatype |
        | name                  | GP Circuit | string   |
        | year_from             | 1967       | number   |
        | year_to               | 1999       | number   |
        | length                | 5.397      | number   |
        | length_unit           | km         | string   |
        | direction             | clockwise  | string   |
        | elevation_change      | 73         | number   |
        | elevation_change_unit | m          | string   |
        | surface               | asphalt    | string   |
        | id                    | 1234       | number   |
        | created_at            | 2025-01-01 | string   |
        | updated_at            | 2025-01-01 | string   |
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
