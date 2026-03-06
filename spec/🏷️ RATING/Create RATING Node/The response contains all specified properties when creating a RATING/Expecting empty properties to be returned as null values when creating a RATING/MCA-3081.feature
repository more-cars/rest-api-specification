@REQ_MCA-3073
Feature: Create RATING Node
  As an API contributor
  I want to be able to create RATINGS
  So I can fill gaps in the database

  @RULE_MCA-3079
  Rule: The response contains all specified properties when creating a RATING

    @TEST_MCA-3081 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a RATING
      When the user creates a "RATING" "93 Percent" with the following data
        | key             | value | datatype |
        | rating_value    | 93    | number   |
        | scale_minimum   | 0     | number   |
        | scale_maximum   | 100   | number   |
        | scale_direction | up    | string   |
      Then the response should contain the following properties
        | key             | value | datatype |
        | rating_value    | 93    | number   |
        | scale_minimum   | 0     | number   |
        | scale_maximum   | 100   | number   |
        | scale_direction | up    | string   |
