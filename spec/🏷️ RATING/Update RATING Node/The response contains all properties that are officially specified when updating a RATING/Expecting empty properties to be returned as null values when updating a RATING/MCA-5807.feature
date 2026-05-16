@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5805
  Rule: The response contains all properties that are officially specified when updating a RATING

    @TEST_MCA-5807 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a RATING
      Given there exists a "RATING" "93 Percent"
      When the user updates the node "93 Percent" with the following data
        | key             | value |
        | rating_value    | 95    |
        | scale_minimum   |       |
        | scale_maximum   | 102   |
        | scale_direction | up_2  |
      Then the response should contain the following properties
        | key             | value |
        | rating_value    | 95    |
        | scale_minimum   |       |
        | scale_maximum   | 102   |
        | scale_direction | up_2  |
