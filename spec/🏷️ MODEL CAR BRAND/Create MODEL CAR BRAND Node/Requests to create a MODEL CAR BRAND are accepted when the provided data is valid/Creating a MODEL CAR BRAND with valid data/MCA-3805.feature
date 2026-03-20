@REQ_MCA-3803
Feature: Create MODEL CAR BRAND Node
  As an API contributor\
  I want to be able to create MODEL CAR BRANDS\
  So I can fill gaps in the database

  @RULE_MCA-3804
  Rule: Requests to create a MODEL CAR BRAND are accepted when the provided data is valid

    @TEST_MCA-3805 @implemented
    Scenario: Creating a MODEL CAR BRAND with valid data
      When the user creates a "MODEL CAR BRAND" "Hot Wheels" with the following data
        | key     | value      | datatype |
        | name    | Hot Wheele | string   |
        | founded | 1968       | number   |
        | defunct |            | number   |
      Then the request should be confirmed with status code 201
      And the response should return the "MODEL CAR BRAND" "Hot Wheels"
