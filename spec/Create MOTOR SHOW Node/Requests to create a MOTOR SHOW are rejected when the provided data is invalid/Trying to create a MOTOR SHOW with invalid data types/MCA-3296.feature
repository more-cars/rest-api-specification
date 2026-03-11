@REQ_MCA-3291
Feature: Create MOTOR SHOW Node
  As an API contributor
  I want to be able to create MOTOR SHOWS
  So I can fill gaps in the database

  @RULE_MCA-3294
  Rule: Requests to create a MOTOR SHOW are rejected when the provided data is invalid

    @TEST_MCA-3296
    Scenario: Trying to create a MOTOR SHOW with invalid data types
      When the user tries to create a "MOTOR SHOW" "IAA 2017" with the following data
        | key             | value              | datatype |
        | name            | 2017 IAA Frankfurt | boolean  |
        | date_from       | 2017-09-14         | boolean  |
        | date_until      | 2017-09-24         | boolean  |
        | location        | Frankfurt          | boolean  |
        | target_audience | international      | boolean  |
        | focus           | new cars           | boolean  |
      Then the request should be rejected with status code 400
