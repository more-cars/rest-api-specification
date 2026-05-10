@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-947
  Rule: The response contains all specified properties when creating a TRACK LAYOUT

    @TEST_MCA-948 @implemented
    Scenario: Expecting all properties to be returned when creating a TRACK LAYOUT
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
      Then the response should contain the following properties
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
