@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5519
  Rule: Unknown properties are ignored when updating a CAR MODEL

    @TEST_MCA-5520 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a CAR MODEL
      Given there exists a "CAR MODEL" "Corolla"
      When the user updates the node "Corolla" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
