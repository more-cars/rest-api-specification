@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5808
  Rule: Unknown properties are ignored when updating a RATING

    @TEST_MCA-5809 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a RATING
      Given there exists a "RATING" "93 Percent"
      When the user updates the node "93 Percent" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
