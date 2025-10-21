@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-944
  Rule: Requests to create a TRACK LAYOUT are rejected when the provided data is invalid

    @TEST_MCA-946 @implemented
    Scenario: Trying to create a TRACK LAYOUT with invalid data types
      When the user tries to create a "TRACK LAYOUT" "GP Circuit" with the following data
        | key                   | value      | datatype |
        | name                  | GP Circuit | boolean  |
        | year_from             | 1967       | boolean  |
        | year_to               | 1999       | boolean  |
        | length                | 5.397      | boolean  |
        | length_unit           | km         | boolean  |
        | direction             | clockwise  | boolean  |
        | elevation_change      | 73         | boolean  |
        | elevation_change_unit | m          | boolean  |
        | surface               | asphalt    | boolean  |
      Then the request should be rejected with status code 400
