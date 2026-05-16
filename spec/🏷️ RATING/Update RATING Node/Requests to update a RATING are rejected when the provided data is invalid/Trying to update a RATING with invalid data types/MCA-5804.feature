@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5803
  Rule: Requests to update a RATING are rejected when the provided data is invalid

    @TEST_MCA-5804 @implemented
    Scenario: Trying to update a RATING with invalid data types
      Given there exists a "RATING" "93 Percent"
      When the user updates the node "93 Percent" with the following data
        | key             | value |
        | rating_value    | TEST  |
        | scale_minimum   | TEST  |
        | scale_maximum   | TEST  |
        | scale_direction | 1234  |
      Then the request should be rejected with status code 400
