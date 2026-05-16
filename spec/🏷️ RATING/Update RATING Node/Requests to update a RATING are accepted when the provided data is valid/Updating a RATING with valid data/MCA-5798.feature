@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5797
  Rule: Requests to update a RATING are accepted when the provided data is valid

    @TEST_MCA-5798 @implemented
    Scenario: Updating a RATING with valid data
      Given there exists a "RATING" "93 Percent"
      When the user updates the node "93 Percent" with the following data
        | key             | value |
        | rating_value    | 95    |
        | scale_minimum   | 0     |
        | scale_maximum   | 102   |
        | scale_direction | down  |
      Then the request should be confirmed with status code 201
