@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5695
  Rule: Requests to update a RACING GAME are rejected when the provided data is invalid

    @TEST_MCA-5696 @implemented
    Scenario: Trying to update a RACING GAME with invalid data types
      Given there exists a "RACING GAME" "Assetto Corsa"
      When the user updates the node "Assetto Corsa" with the following data
        | key          | value |
        | name         | 1234  |
        | release_year | TEST  |
        | developer    | 1234  |
        | publisher    | 1234  |
      Then the request should be rejected with status code 400
