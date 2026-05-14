@REQ_MCA-5598
Feature: Update RACING SERIES Node
  As an API contributor
  I want to be able to update a RACING SERIES
  So I can add missing information or fix incorrect data

  @RULE_MCA-5607
  Rule: The response contains all properties that are officially specified when updating a RACING SERIES

    @TEST_MCA-5609 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a RACING SERIES
      Given there exists a "RACING SERIES" "Formula 1"
      When the user updates the node "Formula 1" with the following data
        | key          | value                          |
        | name         | Deutsche Tourenwagen-Masters_2 |
        | short_name   |                                |
        | founded      |                                |
        | defunct      |                                |
        | organized_by |                                |
        | vehicle_type |                                |
        | country_code |                                |
      Then the response should contain the following properties
        | key          | value                          |
        | name         | Deutsche Tourenwagen-Masters_2 |
        | short_name   |                                |
        | founded      |                                |
        | defunct      |                                |
        | organized_by |                                |
        | vehicle_type |                                |
        | country_code |                                |
