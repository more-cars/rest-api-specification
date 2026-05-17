@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5571
  Rule: The response contains all properties that are officially specified when updating a RACE TRACK

    @TEST_MCA-5572 @implemented
    Scenario: Expecting all properties to be returned when updating a RACE TRACK
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring" with the following data
        | key          | value                  |
        | name         | Lausitzring_2          |
        | opened       | 2002                   |
        | closed       |                        |
        | type         | permanent race track_2 |
        | location     | Klettwitz_2            |
        | geo_position | 51°32’0”N 13°55’10”E_2 |
        | country_code | AT                     |
      Then the request should be confirmed with status code 200
      And the response should contain the following properties
        | key          | value                  |
        | name         | Lausitzring_2          |
        | opened       | 2002                   |
        | closed       |                        |
        | type         | permanent race track_2 |
        | location     | Klettwitz_2            |
        | geo_position | 51°32’0”N 13°55’10”E_2 |
        | country_code | AT                     |
