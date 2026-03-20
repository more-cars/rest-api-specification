@REQ_MCA-3803
Feature: Create MODEL CAR BRAND Node
  As an API contributor\
  I want to be able to create MODEL CAR BRANDS\
  So I can fill gaps in the database

  @RULE_MCA-3809
  Rule: The response contains all specified properties when creating a MODEL CAR BRAND

    @TEST_MCA-3811 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a MODEL CAR BRAND
      When the user creates a "MODEL CAR BRAND" "Hot Wheels" with the following data
        | key  | value      | datatype |
        | name | Hot Wheele | string   |
      Then the response should contain the following properties
        | key     | value      | datatype |
        | name    | Hot Wheele | string   |
        | founded |            | number   |
        | defunct |            | number   |
