@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-944
  Rule: Requests to create a TRACK LAYOUT are rejected when the provided data is invalid

    @TEST_MCA-946 @implemented
    Scenario: Trying to create a TRACK LAYOUT with invalid data types
      When the user tries to create a "TRACK LAYOUT" with the following data
        | key                   | value |
        | name                  | true  |
        | year_from             | true  |
        | year_to               | true  |
        | length                | true  |
        | length_unit           | true  |
        | direction             | true  |
        | elevation_change      | true  |
        | elevation_change_unit | true  |
        | surface               | true  |
      Then the request should be rejected with status code 400
