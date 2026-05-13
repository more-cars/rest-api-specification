@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5508
  Rule: Requests to update a CAR MODEL are accepted when the provided data is valid

    @TEST_MCA-5509 @implemented
    Scenario: Updating a CAR MODEL with valid data
      Given there exists a "CAR MODEL" "Corolla"
      When the user updates the node "Corolla" with the following data
        | key              | value      |
        | name             | Corvette_2 |
        | built_from       | 1978       |
        | built_to         | 1989       |
        | generation       | 5          |
        | internal_code    | C3_2       |
        | total_production | 1234569    |
      Then the request should be confirmed with status code 201
