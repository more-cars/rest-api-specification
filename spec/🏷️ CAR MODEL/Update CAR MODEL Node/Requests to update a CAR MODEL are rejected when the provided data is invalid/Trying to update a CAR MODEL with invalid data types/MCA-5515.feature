@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5514
  Rule: Requests to update a CAR MODEL are rejected when the provided data is invalid

    @TEST_MCA-5515 @implemented
    Scenario: Trying to update a CAR MODEL with invalid data types
      Given there exists a "CAR MODEL" "Corolla"
      When the user updates the node "Corolla" with the following data
        | key              | value |
        | name             | 1234  |
        | built_from       | TEST  |
        | built_to         | TEST  |
        | generation       | TEST  |
        | internal_code    | 1234  |
        | total_production | TEST  |
      Then the request should be rejected with status code 400
