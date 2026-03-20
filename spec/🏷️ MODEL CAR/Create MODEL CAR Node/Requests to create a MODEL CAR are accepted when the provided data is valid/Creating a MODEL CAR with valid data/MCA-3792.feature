@REQ_MCA-3790
Feature: Create MODEL CAR Node
  As an API contributor
  I want to be able to create MODEL CARS
  So I can fill gaps in the database

  @RULE_MCA-3791
  Rule: Requests to create a MODEL CAR are accepted when the provided data is valid

    @TEST_MCA-3792 @implemented
    Scenario: Creating a MODEL CAR with valid data
      When the user creates a "MODEL CAR" "F40 Matchbox" with the following data
        | key          | value    | datatype |
        | name         | BMW 2002 | string   |
        | product_code | DHX60    | string   |
        | release_year | 2016     | number   |
        | scale        | 1:64     | string   |
        | series       | BMW      | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "MODEL CAR" "F40 Matchbox"
