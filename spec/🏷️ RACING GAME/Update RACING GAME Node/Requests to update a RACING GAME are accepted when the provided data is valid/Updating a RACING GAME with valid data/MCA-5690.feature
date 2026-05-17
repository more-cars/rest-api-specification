@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5689
  Rule: Requests to update a RACING GAME are accepted when the provided data is valid

    @TEST_MCA-5690 @implemented
    Scenario: Updating a RACING GAME with valid data
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa" with the following data
        | key          | value                |
        | name         | Forza Motorsport 7_2 |
        | release_year | 2019                 |
        | developer    | Turn 10 Studios_2    |
        | publisher    | Microsoft Studios_2  |
      Then the request should be confirmed with status code 200
