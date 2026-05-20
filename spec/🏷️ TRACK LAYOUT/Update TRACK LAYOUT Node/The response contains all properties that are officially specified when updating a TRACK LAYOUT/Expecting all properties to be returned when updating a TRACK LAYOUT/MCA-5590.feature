@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5589
  Rule: The response contains all properties that are officially specified when updating a TRACK LAYOUT

    @TEST_MCA-5590 @implemented
    Scenario: Expecting all properties to be returned when updating a TRACK LAYOUT
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user updates the node "Grand Prix Circuit" with the following data
        | key                   | value        |
        | name                  | GP Circuit_2 |
        | year_from             | 1969         |
        | year_to               | 2001         |
        | length                | 7.397        |
        | length_unit           | km           |
        | direction             | clockwise    |
        | elevation_change      | 75           |
        | elevation_change_unit | m            |
        | surface               | asphalt      |
      Then the request should be confirmed with status code 200
      And the response should contain the following properties
        | key                   | value        |
        | name                  | GP Circuit_2 |
        | year_from             | 1969         |
        | year_to               | 2001         |
        | length                | 7.397        |
        | length_unit           | km           |
        | direction             | clockwise    |
        | elevation_change      | 75           |
        | elevation_change_unit | m            |
        | surface               | asphalt      |
