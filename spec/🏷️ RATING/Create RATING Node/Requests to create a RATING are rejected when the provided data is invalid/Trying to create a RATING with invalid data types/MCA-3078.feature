@REQ_MCA-3073
Feature: Create RATING Node
  As an API contributor
  I want to be able to create RATINGS
  So I can fill gaps in the database

  @RULE_MCA-3076
  Rule: Requests to create a RATING are rejected when the provided data is invalid

    @TEST_MCA-3078 @implemented
    Scenario: Trying to create a RATING with invalid data types
      When the user tries to create a "RATING" "93 Percent" with the following data
        | key             | value | datatype |
        | rating_value    | 93    | boolean  |
        | scale_minimum   | 0     | boolean  |
        | scale_maximum   | 100   | boolean  |
        | scale_direction | up    | boolean  |
      Then the request should be rejected with status code 400
