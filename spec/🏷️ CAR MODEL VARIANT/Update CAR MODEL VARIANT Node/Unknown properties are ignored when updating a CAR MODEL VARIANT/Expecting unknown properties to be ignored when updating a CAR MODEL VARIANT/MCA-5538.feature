@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5537
  Rule: Unknown properties are ignored when updating a CAR MODEL VARIANT

    @TEST_MCA-5538 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a CAR MODEL VARIANT
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      When the user updates the node "BMW M3 CSL" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
