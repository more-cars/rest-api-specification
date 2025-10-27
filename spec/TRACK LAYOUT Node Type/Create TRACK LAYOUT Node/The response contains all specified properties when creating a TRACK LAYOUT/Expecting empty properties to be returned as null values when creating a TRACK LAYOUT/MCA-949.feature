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
        | key  | value      | datatype |
        | name | GP Circuit | string   |
      Then the response should contain the following properties
        | key                   | value      | datatype |
        | name                  | GP Circuit | string   |
        | year_from             |            | number   |
        | year_to               |            | number   |
        | length                |            | number   |
        | length_unit           |            | string   |
        | direction             |            | string   |
        | elevation_change      |            | number   |
        | elevation_change_unit |            | string   |
        | surface               |            | string   |
