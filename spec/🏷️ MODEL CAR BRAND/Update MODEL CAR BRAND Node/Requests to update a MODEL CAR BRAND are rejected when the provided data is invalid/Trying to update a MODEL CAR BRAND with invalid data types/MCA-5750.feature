@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5749
  Rule: Requests to update a MODEL CAR BRAND are rejected when the provided data is invalid

    @TEST_MCA-5750 @implemented
    Scenario: Trying to update a MODEL CAR BRAND with invalid data types
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels" with the following data
        | key          | value |
        | name         | 1234  |
        | founded      | TEST  |
        | defunct      | TEST  |
        | country_code | 1234  |
      Then the request should be rejected with status code 400
