@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-913
  Rule: Requests to create a RACE TRACK are rejected when the provided data is invalid

    @TEST_MCA-915 @implemented
    Scenario: Trying to create a RACE TRACK with invalid data types
      When the user tries to create a "RACE TRACK" "Lausitzring" with the following data
        | key          | value                | datatype |
        | name         | Lausitzring          | boolean  |
        | opened       | 2000                 | boolean  |
        | closed       |                      | boolean  |
        | type         | permanent race track | boolean  |
        | location     | Klettwitz            | boolean  |
        | geo_position | 51°32'0"N 13°55'10"E | boolean  |
      Then the request should be rejected with status code 400
