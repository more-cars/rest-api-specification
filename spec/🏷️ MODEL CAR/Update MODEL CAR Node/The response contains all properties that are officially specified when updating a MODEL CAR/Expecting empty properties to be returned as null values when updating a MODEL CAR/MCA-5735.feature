@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5733
  Rule: The response contains all properties that are officially specified when updating a MODEL CAR

    @TEST_MCA-5735 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a MODEL CAR
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user updates the node "F40 Matchbox" with the following data
        | key          | value      |
        | name         | BMW 2002_2 |
        | product_code |            |
        | release_year |            |
        | scale        |            |
        | series       |            |
      Then the response should contain the following properties
        | key          | value      |
        | name         | BMW 2002_2 |
        | product_code |            |
        | release_year |            |
        | scale        |            |
        | series       |            |
