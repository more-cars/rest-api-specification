@REQ_MCA-5598
Feature: Update RACING SERIES Node
  As an API contributor
  I want to be able to update a RACING SERIES
  So I can add missing information or fix incorrect data

  @RULE_MCA-5605
  Rule: Requests to update a RACING SERIES are rejected when the provided data is invalid

    @TEST_MCA-5606 @implemented
    Scenario: Trying to update a RACING SERIES with invalid data types
      Given there exists a "RACING SERIES" "Formula 1"
      When the user updates the node "Formula 1" with the following data
        | key          | value |
        | name         | 1234  |
        | short_name   | 1234  |
        | founded      | TEST  |
        | defunct      | TEST  |
        | organized_by | 1234  |
        | vehicle_type | 1234  |
        | country_code | 1234  |
      Then the request should be rejected with status code 400
