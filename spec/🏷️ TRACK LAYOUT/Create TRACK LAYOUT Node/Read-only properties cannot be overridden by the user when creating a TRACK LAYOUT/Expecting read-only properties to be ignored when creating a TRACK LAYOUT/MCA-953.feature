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
        | key                   | value      |
        | name                  | GP Circuit |
        | year_from             | 1967       |
        | year_to               | 1999       |
        | length                | 5.397      |
        | length_unit           | km         |
        | direction             | clockwise  |
        | elevation_change      | 73         |
        | elevation_change_unit | m          |
        | surface               | asphalt    |
        | id                    | 1234       |
        | created_at            | 2025-01-01 |
        | updated_at            | 2025-01-01 |
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
