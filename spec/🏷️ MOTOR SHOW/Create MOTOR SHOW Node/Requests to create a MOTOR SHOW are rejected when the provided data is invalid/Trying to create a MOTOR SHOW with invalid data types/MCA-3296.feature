@REQ_MCA-3291
Feature: Create MOTOR SHOW Node
  As an API contributor
  I want to be able to create MOTOR SHOWS
  So I can fill gaps in the database

  @RULE_MCA-3294
  Rule: Requests to create a MOTOR SHOW are rejected when the provided data is invalid

    @TEST_MCA-3296 @implemented
    Scenario: Trying to create a MOTOR SHOW with invalid data types
      When the user tries to create a "MOTOR SHOW" with the following data
        | key             | value |
        | name            | true  |
        | date_from       | true  |
        | date_until      | true  |
        | location        | true  |
        | target_audience | true  |
        | focus           | true  |
        | country_code    | true  |
      Then the request should be rejected with status code 400
