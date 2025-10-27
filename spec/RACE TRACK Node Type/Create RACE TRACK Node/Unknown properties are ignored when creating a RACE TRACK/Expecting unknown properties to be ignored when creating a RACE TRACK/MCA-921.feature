@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-920
  Rule: Unknown properties are ignored when creating a RACE TRACK

    @TEST_MCA-921 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a RACE TRACK
      When the user creates a "RACE TRACK" "Lausitzring" with the following data
        | key          | value                | datatype |
        | name         | Lausitzring          | string   |
        | opened       | 2000                 | number   |
        | closed       |                      | number   |
        | type         | permanent race track | string   |
        | location     | Klettwitz            | string   |
        | geo_position | 51°32'0"N 13°55'10"E | string   |
        | thimbleweed  | park                 | string   |
      Then the response should contain the following properties
        | key          | value                | datatype |
        | name         | Lausitzring          | string   |
        | opened       | 2000                 | number   |
        | closed       |                      | number   |
        | type         | permanent race track | string   |
        | location     | Klettwitz            | string   |
        | geo_position | 51°32'0"N 13°55'10"E | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
