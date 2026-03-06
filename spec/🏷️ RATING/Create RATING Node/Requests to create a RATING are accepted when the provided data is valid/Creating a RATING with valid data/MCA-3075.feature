@REQ_MCA-3073
Feature: Create RATING Node
  As an API contributor
  I want to be able to create RATINGS
  So I can fill gaps in the database

  @RULE_MCA-3074
  Rule: Requests to create a RATING are accepted when the provided data is valid

    @TEST_MCA-3075 @implemented
    Scenario: Creating a RATING with valid data
      When the user creates a "RATING" "93 Percent" with the following data
        | key             | value | datatype |
        | rating_value    | 93    | number   |
        | scale_minimum   | 0     | number   |
        | scale_maximum   | 100   | number   |
        | scale_direction | up    | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "RATING" "93 Percent"
