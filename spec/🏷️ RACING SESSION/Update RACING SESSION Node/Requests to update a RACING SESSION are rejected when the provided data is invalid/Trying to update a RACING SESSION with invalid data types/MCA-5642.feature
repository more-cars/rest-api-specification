@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5641
  Rule: Requests to update a RACING SESSION are rejected when the provided data is invalid

    @TEST_MCA-5642 @implemented
    Scenario: Trying to update a RACING SESSION with invalid data types
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying" with the following data
        | key           | value |
        | name          | 1234  |
        | start_date    | 1234  |
        | start_time    | 1234  |
        | duration      | TEST  |
        | duration_unit | 1234  |
        | distance      | TEST  |
        | distance_unit | 1234  |
      Then the request should be rejected with status code 400
