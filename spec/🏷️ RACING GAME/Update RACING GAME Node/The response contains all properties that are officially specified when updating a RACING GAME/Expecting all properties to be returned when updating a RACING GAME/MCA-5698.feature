@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5697
  Rule: The response contains all properties that are officially specified when updating a RACING GAME

    @TEST_MCA-5698 @implemented
    Scenario: Expecting all properties to be returned when updating a RACING GAME
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa" with the following data
        | key          | value                |
        | name         | Forza Motorsport 7_2 |
        | release_year | 2019                 |
        | developer    | Turn 10 Studios_2    |
        | publisher    | Microsoft Studios_2  |
      Then the request should be confirmed with status code 200
      And the response should contain the following properties
        | key          | value                |
        | name         | Forza Motorsport 7_2 |
        | release_year | 2019                 |
        | developer    | Turn 10 Studios_2    |
        | publisher    | Microsoft Studios_2  |
