@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5569
  Rule: Requests to update a RACE TRACK are rejected when the provided data is invalid

    @TEST_MCA-5570 @implemented
    Scenario: Trying to update a RACE TRACK with invalid data types
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring" with the following data
        | key          | value |
        | name         | 1234  |
        | opened       | TEST  |
        | closed       | TEST  |
        | type         | 1234  |
        | location     | 1234  |
        | geo_position | 1234  |
        | country_code | 1234  |
      Then the request should be rejected with status code 400
