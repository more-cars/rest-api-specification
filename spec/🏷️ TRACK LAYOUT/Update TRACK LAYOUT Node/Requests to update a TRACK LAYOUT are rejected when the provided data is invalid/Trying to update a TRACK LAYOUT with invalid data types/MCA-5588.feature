@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5587
  Rule: Requests to update a TRACK LAYOUT are rejected when the provided data is invalid

    @TEST_MCA-5588 @implemented
    Scenario: Trying to update a TRACK LAYOUT with invalid data types
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user updates the node "Grand Prix Circuit" with the following data
        | key                   | value |
        | name                  | 1234  |
        | year_from             | TEST  |
        | year_to               | TEST  |
        | length                | TEST  |
        | length_unit           | 1234  |
        | direction             | 1234  |
        | elevation_change      | TEST  |
        | elevation_change_unit | 1234  |
        | surface               | 1234  |
      Then the request should be rejected with status code 400
