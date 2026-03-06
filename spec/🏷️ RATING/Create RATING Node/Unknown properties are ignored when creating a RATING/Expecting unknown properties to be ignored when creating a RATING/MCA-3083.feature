@REQ_MCA-3073
Feature: Create RATING Node
  As an API contributor
  I want to be able to create RATINGS
  So I can fill gaps in the database

  @RULE_MCA-3082
  Rule: Unknown properties are ignored when creating a RATING

    @TEST_MCA-3083 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a RATING
      When the user creates a "RATING" "93 Percent" with the following data
        | key             | value | datatype |
        | rating_value    | 93    | number   |
        | scale_minimum   | 0     | number   |
        | scale_maximum   | 100   | number   |
        | scale_direction | up    | string   |
        | thimbleweed     | park  | string   |
      Then the response should contain the following properties
        | key             | value | datatype |
        | rating_value    | 93    | number   |
        | scale_minimum   | 0     | number   |
        | scale_maximum   | 100   | number   |
        | scale_direction | up    | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
