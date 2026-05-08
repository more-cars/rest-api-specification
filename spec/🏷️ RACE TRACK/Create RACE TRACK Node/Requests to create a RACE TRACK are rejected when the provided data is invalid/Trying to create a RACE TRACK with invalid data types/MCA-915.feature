@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-913
  Rule: Requests to create a RACE TRACK are rejected when the provided data is invalid

    @TEST_MCA-915 @implemented
    Scenario: Trying to create a RACE TRACK with invalid data types
      When the user tries to create a "RACE TRACK" with the following data
        | key          | value |
        | name         | true  |
        | opened       | true  |
        | closed       | true  |
        | type         | true  |
        | location     | true  |
        | geo_position | true  |
        | country_code | true  |
      Then the request should be rejected with status code 400
