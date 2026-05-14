@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5623
  Rule: Requests to update a RACING EVENT are rejected when the provided data is invalid

    @TEST_MCA-5624 @implemented
    Scenario: Trying to update a RACING EVENT with invalid data types
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user updates the node "GP Monaco" with the following data
        | key       | value |
        | name      | 1234  |
        | round     | TEST  |
        | date_from | 1234  |
        | date_to   | 1234  |
      Then the request should be rejected with status code 400
