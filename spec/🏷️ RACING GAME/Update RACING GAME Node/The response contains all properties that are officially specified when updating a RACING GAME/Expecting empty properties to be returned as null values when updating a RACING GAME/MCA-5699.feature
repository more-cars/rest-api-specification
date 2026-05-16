@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5697
  Rule: The response contains all properties that are officially specified when updating a RACING GAME

    @TEST_MCA-5699 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a RACING GAME
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa" with the following data
        | key          | value                |
        | name         | Forza Motorsport 7_2 |
        | release_year |                      |
        | developer    |                      |
        | publisher    |                      |
      Then the response should contain the following properties
        | key          | value                |
        | name         | Forza Motorsport 7_2 |
        | release_year |                      |
        | developer    |                      |
        | publisher    |                      |
