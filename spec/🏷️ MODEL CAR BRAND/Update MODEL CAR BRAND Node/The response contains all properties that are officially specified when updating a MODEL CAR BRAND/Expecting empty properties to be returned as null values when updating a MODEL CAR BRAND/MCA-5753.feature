@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5751
  Rule: The response contains all properties that are officially specified when updating a MODEL CAR BRAND

    @TEST_MCA-5753 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a MODEL CAR BRAND
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels" with the following data
        | key          | value        |
        | name         | Hot Wheels_2 |
        | founded      |              |
        | defunct      |              |
        | country_code |              |
      Then the response should contain the following properties
        | key          | value        |
        | name         | Hot Wheels_2 |
        | founded      |              |
        | defunct      |              |
        | country_code |              |
