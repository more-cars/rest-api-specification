@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5516
  Rule: The response contains all properties that are officially specified when updating a CAR MODEL

    @TEST_MCA-5518 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a CAR MODEL
      Given there exists a "CAR MODEL" "Corolla"
      When the user updates the node "Corolla" with the following data
        | key              | value      |
        | name             | Corvette_2 |
        | built_from       |            |
        | built_to         |            |
        | generation       |            |
        | internal_code    |            |
        | total_production |            |
      Then the response should contain the following properties
        | key              | value      |
        | name             | Corvette_2 |
        | built_from       |            |
        | built_to         |            |
        | generation       |            |
        | internal_code    |            |
        | total_production |            |
