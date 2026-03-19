@REQ_MCA-3803
Feature: Create MODEL CAR BRAND Node
  As an API contributor\
  I want to be able to create MODEL CAR BRANDS\
  So I can fill gaps in the database

  @RULE_MCA-3812
  Rule: Unknown properties are ignored when creating a MODEL CAR BRAND

    @TEST_MCA-3813
    Scenario: Expecting unknown properties to be ignored when creating a MODEL CAR BRAND
      When the user creates a "MODEL CAR BRAND" "Hot Wheels" with the following data
        | key         | value      | datatype |
        | name        | Hot Wheele | string   |
        | founded     | 1968       | number   |
        | defunct     |            | number   |
        | thimbleweed | park       | string   |
      Then the response should contain the following properties
        | key     | value      | datatype |
        | name    | Hot Wheele | string   |
        | founded | 1968       | number   |
        | defunct |            | number   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
