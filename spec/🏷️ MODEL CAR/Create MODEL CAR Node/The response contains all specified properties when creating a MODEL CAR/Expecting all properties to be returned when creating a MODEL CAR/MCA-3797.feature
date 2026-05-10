@REQ_MCA-3790
Feature: Create MODEL CAR Node
  As an API contributor
  I want to be able to create MODEL CARS
  So I can fill gaps in the database

  @RULE_MCA-3796
  Rule: The response contains all specified properties when creating a MODEL CAR

    @TEST_MCA-3797 @implemented
    Scenario: Expecting all properties to be returned when creating a MODEL CAR
      When the user creates a "MODEL CAR" "F40 Matchbox" with the following data
        | key          | value    |
        | name         | BMW 2002 |
        | product_code | DHX60    |
        | release_year | 2016     |
        | scale        | 1:64     |
        | series       | BMW      |
      Then the response should contain the following properties
        | key          | value    |
        | name         | BMW 2002 |
        | product_code | DHX60    |
        | release_year | 2016     |
        | scale        | 1:64     |
        | series       | BMW      |
