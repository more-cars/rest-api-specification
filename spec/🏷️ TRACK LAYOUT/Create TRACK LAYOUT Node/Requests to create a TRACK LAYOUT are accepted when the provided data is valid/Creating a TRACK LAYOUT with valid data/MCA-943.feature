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
      Then the request should be confirmed with status code 201
      And the response should return the "TRACK LAYOUT" "GP Circuit"
