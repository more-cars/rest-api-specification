@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-917
  Rule: The response contains all specified properties when creating a RACE TRACK

    @TEST_MCA-919 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a RACE TRACK
      When the user creates a "RACE TRACK" "Lausitzring" with the following data
        | key  | value       | datatype |
        | name | Lausitzring | string   |
      Then the response should contain the following properties
        | key          | value       | datatype |
        | name         | Lausitzring | string   |
        | opened       |             | number   |
        | closed       |             | number   |
        | type         |             | string   |
        | location     |             | string   |
        | geo_position |             | string   |
