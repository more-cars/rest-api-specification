@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-917
  Rule: The response contains all specified properties when creating a RACE TRACK

    @TEST_MCA-918 @implemented
    Scenario: Expecting all properties to be returned when creating a RACE TRACK
      When the user creates a "RACE TRACK" "Lausitzring" with the following data
        | key          | value                |
        | name         | Lausitzring          |
        | opened       | 2000                 |
        | closed       |                      |
        | type         | permanent race track |
        | location     | Klettwitz            |
        | geo_position | 51°32'0"N 13°55'10"E |
        | country_code | DE                   |
      Then the response should contain the following properties
        | key          | value                |
        | name         | Lausitzring          |
        | opened       | 2000                 |
        | closed       |                      |
        | type         | permanent race track |
        | location     | Klettwitz            |
        | geo_position | 51°32'0"N 13°55'10"E |
        | country_code | DE                   |
