@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5589
  Rule: The response contains all properties that are officially specified when updating a TRACK LAYOUT

    @TEST_MCA-5591 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a TRACK LAYOUT
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user updates the node "Grand Prix Circuit" with the following data
        | key                   | value        |
        | name                  | GP Circuit_2 |
        | year_from             |              |
        | year_to               |              |
        | length                |              |
        | length_unit           |              |
        | direction             |              |
        | elevation_change      |              |
        | elevation_change_unit |              |
        | surface               |              |
      Then the response should contain the following properties
        | key                   | value        |
        | name                  | GP Circuit_2 |
        | year_from             |              |
        | year_to               |              |
        | length                |              |
        | length_unit           |              |
        | direction             |              |
        | elevation_change      |              |
        | elevation_change_unit |              |
        | surface               |              |
