@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-947
  Rule: The response contains all specified properties when creating a TRACK LAYOUT

    @TEST_MCA-949 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a TRACK LAYOUT
      When the user creates a "TRACK LAYOUT" "GP Circuit" with the following data
        | key  | value      |
        | name | GP Circuit |
      Then the response should contain the following properties
        | key                   | value      |
        | name                  | GP Circuit |
        | year_from             |            |
        | year_to               |            |
        | length                |            |
        | length_unit           |            |
        | direction             |            |
        | elevation_change      |            |
        | elevation_change_unit |            |
        | surface               |            |
