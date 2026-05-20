@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5563
  Rule: Requests to update a RACE TRACK are accepted when the provided data is valid

    @TEST_MCA-5564 @implemented
    Scenario: Updating a RACE TRACK with valid data
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring" with the following data
        | key          | value                |
        | name         | Lausitzring_2        |
        | opened       | 2002                 |
        | closed       |                      |
        | type         | permanent race track |
        | location     | Klettwitz_2          |
        | geo_position | 51°32′0″N 13°55′10″E |
        | country_code | AT                   |
      Then the request should be confirmed with status code 200
