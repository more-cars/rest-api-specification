@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5731
  Rule: Requests to update a MODEL CAR are rejected when the provided data is invalid

    @TEST_MCA-5732 @implemented
    Scenario: Trying to update a MODEL CAR with invalid data types
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user updates the node "F40 Matchbox" with the following data
        | key          | value |
        | name         | 1234  |
        | product_code | 1234  |
        | release_year | TEST  |
        | scale        | 1234  |
        | series       | 1234  |
      Then the request should be rejected with status code 400
