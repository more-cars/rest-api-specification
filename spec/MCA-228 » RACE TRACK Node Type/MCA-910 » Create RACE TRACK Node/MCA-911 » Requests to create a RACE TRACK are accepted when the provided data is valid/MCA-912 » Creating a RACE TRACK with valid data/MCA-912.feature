@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-911
  Rule: Requests to create a RACE TRACK are accepted when the provided data is valid

    @TEST_MCA-912 @implemented
    Scenario: Creating a RACE TRACK with valid data
      When the user creates a "RACE TRACK" "Lausitzring" with the following data
        | key          | value                | datatype |
        | name         | Lausitzring          | string   |
        | opened       | 2000                 | number   |
        | closed       |                      | number   |
        | type         | permanent race track | string   |
        | location     | Klettwitz            | string   |
        | geo_position | 51°32'0"N 13°55'10"E | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "RACE TRACK" "Lausitzring"
