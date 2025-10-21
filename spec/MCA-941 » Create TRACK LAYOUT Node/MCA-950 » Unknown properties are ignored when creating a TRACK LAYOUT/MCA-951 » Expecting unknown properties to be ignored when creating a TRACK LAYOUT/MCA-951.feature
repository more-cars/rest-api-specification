@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-950
  Rule: Unknown properties are ignored when creating a TRACK LAYOUT

    @TEST_MCA-951 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a TRACK LAYOUT
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
        | thimbleweed           | park       | string   |
      Then the response should contain the following properties
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
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
