@REQ_MCA-1141
Feature: Create RACING SERIES Node
  As an API contributor
  I want to be able to create RACING SERIES
  So I can fill gaps in the database

  @RULE_MCA-1144
  Rule: Requests to create a RACING SERIES are rejected when the provided data is invalid

    @TEST_MCA-1146 @implemented
    Scenario: Trying to create a RACING SERIES with invalid data types
      When the user tries to create a "RACING SERIES" with the following data
        | key          | value |
        | name         | true  |
        | short_name   | true  |
        | founded      | true  |
        | defunct      | true  |
        | organized_by | true  |
        | vehicle_type | true  |
        | country_code | true  |
      Then the request should be rejected with status code 400
