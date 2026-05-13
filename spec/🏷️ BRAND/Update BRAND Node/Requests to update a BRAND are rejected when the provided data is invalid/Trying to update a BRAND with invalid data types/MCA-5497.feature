@REQ_MCA-5489
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5496
  Rule: Requests to update a BRAND are rejected when the provided data is invalid

    @TEST_MCA-5497 @implemented
    Scenario: Trying to update a BRAND with invalid data types
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW" with the following data
        | key          | value |
        | name         | 1234  |
        | full_name    | 1234  |
        | founded      | TEST  |
        | defunct      | TEST  |
        | wmi          | 1234  |
        | hsn          | 1234  |
        | country_code | 1234  |
      Then the request should be rejected with status code 400
