@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-942
  Rule: Requests to create a TRACK LAYOUT are accepted when the provided data is valid

    @TEST_MCA-943 @implemented
    Scenario: Creating a TRACK LAYOUT with valid data
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
      Then the request should be confirmed with status code 201
      And the response should return the "TRACK LAYOUT" "GP Circuit"
