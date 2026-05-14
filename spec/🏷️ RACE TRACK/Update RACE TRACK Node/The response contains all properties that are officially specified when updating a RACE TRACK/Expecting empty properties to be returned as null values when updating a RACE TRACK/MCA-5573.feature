@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5571
  Rule: The response contains all properties that are officially specified when updating a RACE TRACK

    @TEST_MCA-5573 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a RACE TRACK
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring" with the following data
        | key          | value         |
        | name         | Lausitzring_2 |
        | opened       |               |
        | closed       |               |
        | type         |               |
        | location     |               |
        | geo_position |               |
        | country_code |               |
      Then the response should contain the following properties
        | key          | value         |
        | name         | Lausitzring_2 |
        | opened       |               |
        | closed       |               |
        | type         |               |
        | location     |               |
        | geo_position |               |
        | country_code |               |
