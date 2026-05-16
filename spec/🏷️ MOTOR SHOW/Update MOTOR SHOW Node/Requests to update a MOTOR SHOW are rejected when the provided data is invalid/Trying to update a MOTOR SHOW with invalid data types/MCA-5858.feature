@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5857
  Rule: Requests to update a MOTOR SHOW are rejected when the provided data is invalid

    @TEST_MCA-5858 @implemented
    Scenario: Trying to update a MOTOR SHOW with invalid data types
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt" with the following data
        | key             | value |
        | name            | 1234  |
        | date_from       | 1234  |
        | date_until      | 1234  |
        | location        | 1234  |
        | target_audience | 1234  |
        | focus           | 1234  |
        | country_code    | 1234  |
      Then the request should be rejected with status code 400
