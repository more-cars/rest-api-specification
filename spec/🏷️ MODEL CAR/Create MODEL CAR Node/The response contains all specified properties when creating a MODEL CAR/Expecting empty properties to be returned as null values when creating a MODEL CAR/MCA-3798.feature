@REQ_MCA-3790
Feature: Create MODEL CAR Node
  As an API contributor
  I want to be able to create MODEL CARS
  So I can fill gaps in the database

  @RULE_MCA-3796
  Rule: The response contains all specified properties when creating a MODEL CAR

    @TEST_MCA-3798 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a MODEL CAR
      When the user creates a "MODEL CAR" "F40 Matchbox" with the following data
        | key  | value    | datatype |
        | name | BMW 2002 | string   |
      Then the response should contain the following properties
        | key          | value    | datatype |
        | name         | BMW 2002 | string   |
        | product_code |          | string   |
        | release_year |          | number   |
        | scale        |          | string   |
        | series       |          | string   |
