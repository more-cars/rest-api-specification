@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5743
  Rule: Requests to update a MODEL CAR BRAND are accepted when the provided data is valid

    @TEST_MCA-5744 @implemented
    Scenario: Updating a MODEL CAR BRAND with valid data
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels" with the following data
        | key          | value        |
        | name         | Hot Wheels_2 |
        | founded      | 1970         |
        | defunct      |              |
        | country_code | US_2         |
      Then the request should be confirmed with status code 201
