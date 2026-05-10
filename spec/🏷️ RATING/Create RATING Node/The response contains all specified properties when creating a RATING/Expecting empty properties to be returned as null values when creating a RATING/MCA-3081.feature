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
        | key             | value |
        | rating_value    | 93    |
        | scale_minimum   | 0     |
        | scale_maximum   | 100   |
        | scale_direction | up    |
      Then the response should contain the following properties
        | key             | value |
        | rating_value    | 93    |
        | scale_minimum   | 0     |
        | scale_maximum   | 100   |
        | scale_direction | up    |
